module encoderrr(a,b,c,d0,d1,d2,d3,d4,d5,d6,d7);
output a,b,c;
input d0,d1,d2,d3,d4,d5,d6,d7;
or g1(a,d4,d5,d6,d7);
or g2(b,d2,d3,d6,d7);
or g3(c,d1,d3,d5,d7);
endmodule
