module ripple(s0,s1,s2,s3,cout,a0,b0,a1,b1,a2,b2,a3,b3,cin);
output s0,s1,s2,s3,cout;
input a0,b0,a1,b1,a2,b2,a3,b3,cin;
wire c0,c1,c2;
fasm fa1(s0,c0,a0,b0,cin);
fasm fa2(s1,c1,a1,b1,c0);
fasm fa3(s2,c2,a2,b2,c1);
fasm fa4(s3,cout,a3,b3,c2);
endmodule
