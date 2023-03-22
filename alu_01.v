module al1u(y,a,b,s);
output reg [7:0]y;
input [1:0]a,b,s;
always @(a,b,s)

case(s)
  2'b00:y <= a+b;
  2'b01:y <= a&b;
  2'b10:y <= a&&b;
  2'b11:y <= a|b;
endcase
   endmodule
