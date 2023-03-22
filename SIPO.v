module SIPO(y,clk,a);
output [3:0]y;
input clk,a;
d_filpflop d1(y[0],clk,a);
d_filpflop d2(y[1],clk,y[0]);
d_filpflop d3(y[2],clk,y[1]);
d_filpflop d4(y[3],clk,y[2]);
endmodule


