module gates(a,b,c,d,e,f,g,x,y);
output a,b,c,d,e,f,g;
input x,y;
assign a=x&y;
assign b=x|y;
assign c=~y;
assign d=~(x&y);
assign e=~(x|y);
assign f=x^y;
assign g=~(x^y);
endmodule

