module eenco(a,b,d0,d1,d2,d3);
output a,b;
input d0,d1,d2,d3;
assign a=d2|d3;
assign b=d1|d3;
endmodule
