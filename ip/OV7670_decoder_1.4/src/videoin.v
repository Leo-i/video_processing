`timescale 1ns / 1ps

module videoin(
	pclk,
	vsync,
	href,
	d,
	vsync_out,
	href_out,
	hsync,
	dout,
	data_valid,
	pclk_out,
	mode
 );
 
 	 input pclk;
     input vsync;
     input href;
     input[7:0] d;
     input [2:0] mode;
     output wire vsync_out;
     output wire href_out;
     output reg hsync;
     output reg[31:0] dout;
     output reg data_valid;
     output reg pclk_out;
     wire [2:0] mode;
 
	reg [15:0] d_latch;
	reg [1:0] wr_hold;  
	reg [1:0] valid_hold;  
	reg href_latch;
		
	initial d_latch = 24'b0;
	initial href_latch = 1'b0;
	initial wr_hold = 2'b0;
	initial valid_hold = 2'b0;
	initial pclk_out =1'b0;   

	assign vsync_out = vsync;
	assign href_out = href;

always@(posedge pclk)begin 
	if( vsync == 1) begin
		  wr_hold <=  2'b0;
		  end
	else begin
		  data_valid <= valid_hold[1];  // hold data valid through one line
		  wr_hold <= {wr_hold[0] , (href &&( ! wr_hold[0])) };
		  valid_hold <= {valid_hold[0] , href };
		  d_latch <= {d_latch[7:0] , d};

		  if (wr_hold[1] ==1 )begin  // output new pixel
		      case (mode)
		          3'b000: dout[31:0]  <= {d_latch[15:12], 4'b0, d_latch[11:8] , 4'b0, d_latch[7:4], 4'b0, d_latch[3:0], 4'b0};
		          3'b001: dout[31:0]  <= {8'b0, d_latch[14:10] , 3'b0, d_latch[9:5], 3'b0, d_latch[4:0], 3'b0};
		          3'b010: dout[31:0]  <= {8'b0, d_latch[15:11] , 3'b0, d_latch[10:5], 2'b0, d_latch[4:0], 3'b0};
		          default: dout[31:0]  <= {d_latch[15:12], 4'b0, d_latch[11:8] , 4'b0, d_latch[7:4], 4'b0, d_latch[3:0], 4'b0};
              endcase
		  end
		  else begin
		      if (data_valid == 1) begin // hold old data
		          dout <= dout;
              end
              else begin // no data
                dout <= 32'b0;
              end
          end

	  end;
	
	  	href_latch <= href;
        if (href && (!href_latch) == 1) begin
            hsync <= 1; 
        end
        else begin
            hsync <= 0;
        end
	  
	 end
	 
always@(negedge pclk)begin
    pclk_out = !pclk_out;
end

endmodule