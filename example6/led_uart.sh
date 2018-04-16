#!/bin/bash
rm -f catboard.blif
yosys -q -p "synth_ice40 -blif catboard.blif" catboard.v clk_div2.v uart.v baud_rate_gen.v transmitter.v receiver.v  



