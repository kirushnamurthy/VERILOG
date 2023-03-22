module decoder_BM(d,a,b);
output [3:0]d;
reg [3:0]d;
input a,b;
always @(a,b)
begin
  if(a==0 &b==0)
  begin
    d[0]=1;
    d[1]=0;
    d[2]=0;
    d[3]=0;
  end
  else if(a==0 & b==1)
  begin
    d[0]=0;
    d[1]=1;
    d[2]=0;
    d[3]=0;
  end
  else if(a==1 & b==0)
  begin
    d[0]=0;
    d[1]=0;
    d[2]=1;
    d[3]=0;
  end
  else
  begin
    d[0]=0;
    d[1]=0;
    d[2]=0;
    d[3]=1;
  end
end
endmodule

