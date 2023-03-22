module JK_FF_BM(q,j,k,clk);
output q;
reg q;
input j,k,clk;
always @(posedge clk )
begin
  if(j==0 & k==0)
    q=q;
  else if(j==0 &k==1)
    q=1'b0;
  else if(j==1 & k==0)
    q=1'b1;
  else
    q=~q;
end
endmodule
