module deco(d1,d2,d3,d4,d5,d6,d7,d8,a,b,c);
output d1,d2,d3,d4,d5,d6,d7,d8;
input a,b,c;
wire w1,w2,w3;
not g1(w1,a);
not g2(w2,b);
not g3(w3,c);
and g4(d1,w1,w2,w3);
and g5(d2,w1,w2,c);
and g6(d3,w1,b,w3);
and g7(d4,w1,b,c);
and g8(d5,a,w2,w3);
and g9(d6,a,w2,c);
and g10(d7,a,b,w3);
and g11(d8,a,b,c);
endmodule
