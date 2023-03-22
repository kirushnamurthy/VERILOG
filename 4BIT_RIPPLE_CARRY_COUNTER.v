module rcc(q,clk);
output [3:0]q;
input clk;
JK_FF_BM jk1(q[0],1'b1,1'b1,clk);
JK_FF_BM jk2(q[1],1'b1,1'b1,q[0]);
JK_FF_BM jk3(q[2],1'b1,1'b1,q[1]);
JK_FF_BM jk4(q[3],1'b1,1'b1,q[2]);
endmodule
