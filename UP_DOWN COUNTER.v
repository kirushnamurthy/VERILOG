module up_down_counter(q,clk,reset,mode);
output [2:0]q=3'b000;
reg[2:0]q;
input clk,reset,mode;
always @(posedge clk)
begin
if(reset)
 q=3'b000;
else if(mode==1'b0)
 q=q+1;
else
 q=q-1;
end
endmodule
