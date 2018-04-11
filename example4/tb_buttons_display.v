module tb_buttons_display;

wire d0_o;
wire d1_o;
wire d2_o;
wire d3_o;
wire d4_o;
wire d5_o;
wire d6_o;
wire d7_o;
reg clk_i;
wire sw1_i;
wire sw2_i;
wire [3:0] sw3_i;

initial begin
    $from_myhdl(
        clk_i
    );
    $to_myhdl(
        d0_o,
        d1_o,
        d2_o,
        d3_o,
        d4_o,
        d5_o,
        d6_o,
        d7_o,
        sw1_i,
        sw2_i,
        sw3_i
    );
end

buttons_display dut(
    d0_o,
    d1_o,
    d2_o,
    d3_o,
    d4_o,
    d5_o,
    d6_o,
    d7_o,
    clk_i,
    sw1_i,
    sw2_i,
    sw3_i
);

endmodule
