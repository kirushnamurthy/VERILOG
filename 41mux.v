module mux(y,s1,s0,d0,d1,d2,d3);
output y;
input s1,s0,d0,d1,d2,d3;
wire w1,w2,w3,w4,w5,w6;
not g1(w1,s1);
not g2(w2,s0);
and g3(w3,w1,w2,d0);
and g4(w4,w1,s0,d1);
and g5(w5,s1,w2,d2);
and g6(w6,s1,s0,d3);
or g7(y,w3,w4,w5,w6);
endmodule
