module PISO(out,clk,shift,a,b,c,d);
output out;
input clk,shift;
input a,b,c,d;
wire [13:1]w;
not g1(w[1],shift);
d_filpflop d1(w[2],a,clk);
and g2(w[3],w[2],shift);
and g3(w[4],w[1],b);
or g4(w[5],w[3],w[4]);
d_filpflop d2(w[6],w[5],clk);
and g5(w[7],w[6],shift);
and g6(w[8],w[1],c);
or g7(w[9],w[7],w[8]);
d_filpflop d3(w[10],w[9],clk);
and g8(w[11],w[10],shift);
and g9(w[12],w[1],d);
or g10(w[13],w[11],w[12]);
d_filpflop d4(out,w[13],clk);
endmodule




