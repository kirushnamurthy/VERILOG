module SR_FF_BM(q,clk,reset,s,r);
output q;
reg q;
input clk,reset,s,r;
always @(posedge clk or posedge reset)
begin
  if(s==0 & r==0)
    q=q;
  else if(s==0 &r==1)
    q=1'b0;
  else if(s==1 & r==0)
    q=1'b1;
  else
    q=1'bx;
end
endmodule
