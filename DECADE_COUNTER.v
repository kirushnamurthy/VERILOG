module decade_counter(q,clk,reset);
output [3:0]q=4'b0000;
reg[3:0]q;
input clk,reset;
always @(posedge clk)
begin
if(reset | q==4'b1001)
 q=4'b0000;
else
 q=q+1;
end
endmodule
