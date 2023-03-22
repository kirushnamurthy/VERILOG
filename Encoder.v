module encoder(y0,y1,w0,w1,w2,w3);
output y0,y1;
input w0,w1,w2,w3;
buf g1(y2,w0);
or g2(y0,w1,w3);
or g3(y1,w2,w3);
endmodule
