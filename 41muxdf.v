module muxxx(y,s1,s0,d0,d1,d2,d3);
output y;
input s1,s0,d0,d1,d2,d3;
assign y=(~s1&~s0&d0)|(~s1&s0&d1)|(s1&~s0&d2)|(s1&s0&d3);
endmodule
