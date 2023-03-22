module fasm(s2,cout,a,b,cin);
output s2,cout;
input a,b,cin;
wire s1,c1,c2;
ha ha1(s1,c1,a,b);
ha ha2(s2,c2,s1,cin);
or o1(cout,c2,c1);
endmodule
