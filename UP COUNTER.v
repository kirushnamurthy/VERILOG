module up_counter(q,clk,reset);
output [2:0]q=3'b000;
reg[2:0]q;
input clk,reset;
always @(posedge clk)
begin
if(reset)
 q=3'b000;
else
 q=q+1;
end
endmodule
