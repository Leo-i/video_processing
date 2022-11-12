

proc generate {drv_handle} {
	xdefine_include_file $drv_handle "xparameters.h" "AXIS2VGA" "NUM_INSTANCES" "DEVICE_ID"  "C_params_AXI_BASEADDR" "C_params_AXI_HIGHADDR"
}
