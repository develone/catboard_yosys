// File: catboard.v
// Generated by MyHDL 1.0dev
// Date: Wed Apr  4 14:42:23 2018


`timescale 1ns/10ps
//uart_rx an input to the fpga T15 sent from RPi
//'uart_rx', 'bcm14_txd'

//uart_tx an output from the fpga T14 going to the RPi
//'uart_tx', 'bcm15_rxd'
 
module catboard (
    led,
    clock,
    uart_tx,
    uart_rx
);

output [3:0] led;
reg [3:0] led;
output uart_tx;
wire uart_tx;
reg uart_tx;
input clock;
input uart_rx;
//reg uart_rx;
reg reset;
reg toggle;
reg [26:0] cnt;

reg [7:0] data = 0;
//reg clock = 0;
reg enable = 1;

wire tx_busy;
wire rdy;
wire [7:0] rxdata;

//wire loopback;
reg rdy_clr = 0;

frequency_divider_by2 div_clk(.clock(clock),
	.reset(reset),
	.clk_50m(clk_50m));
	
uart test_uart(.din(data),
    .wr_en(enable),
    .clk_50m(clk_50m),
    .tx(uart_tx),
    .tx_busy(tx_busy),
    .rx(uart_rx),
    .rdy(rdy),
    .rdy_clr(rdy_clr),
    .dout(rxdata));


always @(posedge clock) begin: CATBOARD_RTL
    if (($signed({1'b0, cnt}) == (100000000 - 1))) begin
        cnt <= 0;
        toggle <= (!toggle);
    end
    else begin
        cnt <= (cnt + 1);
    end
end


always @(toggle) begin: CATBOARD_RTL_ASSIGN
    integer ii;
    led[0] = toggle;
    led[1] = (!toggle);
    for (ii=2; ii<4; ii=ii+1) begin
        led[ii] = 0;
    end
end


always @(posedge clock) begin: CATBOARD_RTL_RESET
    reset <= (!1'b0);
end

endmodule
