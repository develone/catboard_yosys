
module frequency_divider_by2 ( clock ,reset, clk_50m );
output reg clk_50m;
input clock ;
input reset;
always @(posedge clock)
begin
if (~reset)
     clk_50m <= 1'b0;
else
     clk_50m <= ~clk_50m;	
end
endmodule
