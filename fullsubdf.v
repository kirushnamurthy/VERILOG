module fsdf(dif,bor,a,b,c);
output dif,bor;
input a,b,c;
assign dif=a^b^c;
assign bor=(~a&c)|(b&c)|(~a&b);
endmodule
