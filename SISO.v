module SISO(y,clk,a);
output y;
input clk,a;
wire w1,w2,w3;
d_filpflop d0(w1,clk,a);
d_filpflop d1(w2,clk,w1);
d_filpflop d2(w3,clk,w2);
d_filpflop d3(y,clk,w3);
endmodule

