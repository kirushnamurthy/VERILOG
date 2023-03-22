module sr_filpflop(q,qq,clk,reset,s,r);
output q,qq;
input clk,reset,s,r;
reg q,qq;
always @(posedge clk or reset)
begin
if(reset)
  q=1'b0;
else if(s==1)
  begin
  q=1;
  qq=0;
  end
else if(r==1)
  begin
  q=0;
  qq=1;
  end
else if(s==0 & r==0)
  begin
  q=q;
  qq=qq;
  end
  end
endmodule


