module magcomp(g,l,e,a1,a2,b1,b2);
output g,l,e;
input a1,a2,b1,b2;
assign g=(a1&~b1)|((~b2 & a2)&(~b1 | a1));
assign e=(a2 ~^ b2)&(a1 ~^ b1);
assign l=(~a1 & b1)|((~a2 & b2)&(~a1 | b1));
endmodule

