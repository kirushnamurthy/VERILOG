module bm1cc(y,a,b,c,d);
output y;
reg y;
input a,b,c,d;
always @(a or b or c or d)
 begin
   y <= (~(a&b) |(c^d));
 end
endmodule
