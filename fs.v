module fullsub(dif,bor,a,b,c);
output dif,bor;
input a,b,c;
wire w1,w2,w3,w4,w5;
xor g1(w1,a,b);
not g2(w2,a);
and g3(w3,w2,b);
not g4(w4,w1);
xor g5(diff,w1,c);
and g6(w5,w4,c);
or g7(borrow,w5,w3);
endmodule
