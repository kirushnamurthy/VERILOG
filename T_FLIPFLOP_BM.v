module Tff_BM(q,t,clk,reset);
output q;
reg q;
input t,clk,reset;
initial
 q=1'b0;
always @(posedge clk or posedge reset)
begin
  if(reset)
    q=1'b0;
  else if (t==1)
    q=~q;
  else
    q=q;
end
endmodule
   
