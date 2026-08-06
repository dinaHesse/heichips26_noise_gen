(* dont_touch = "yes", KEEP = "true", KEEP_HIERARCHY = "true", ALLOW_COMBINATORIAL_LOOPS="true" *) control_module #(
    .NUM_OF_ROS(15),
    .CHAIN_SIZE(4)
) cro_inst (
    .mode_select(2'b11),
    .reset_n(!reset),
    .clk(crypt_clk),
    .en_array(32'hFFFFFFFF),
    .button_off(1'b0),
    .led1(),
    .led2(),
    .led3(),
    .io_pin()
);