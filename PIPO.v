module PIPO(y,clk,a);
output [3:0]y;
input [3:0]a;
input clk;
d_filpflop d1(y[0],clk,a[0]);
d_filpflop d2(y[1],clk,a[1]);
d_filpflop d3(y[2],clk,a[2]);
d_filpflop d4(y[3],clk,a[3]);
endmodule
