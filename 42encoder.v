module encoderr(a,b,d0,d1,d2,d3);
output a,b;
input d0,d1,d2,d3;
or g1(a,d2,d3);
or g2(b,d1,d3);
endmodule
