module muuxx(y,s0,a,b);
output y;
input s0,a,b;
assign y=~s0&a|s0&b;
endmodule
