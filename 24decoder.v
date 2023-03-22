module decooder(d1,d2,d3,d4,a,b);
output d1,d2,d3,d4;
input a,b;
wire w1,w2;
not g1(w1,a);
not g2(w2,b);
and g3(d1,w1,w2);
and g4(d2,w1,b);
and g5(d3,a,w2);
and g6(d4,a,b);
endmodule
