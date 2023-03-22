module d_filpflop(q,clk,a);
output q;
input clk,a;
reg q;
always @(posedge clk)
q <= a;
endmodule


