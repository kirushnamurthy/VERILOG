module mux41_BM(y,a,s);
output y;
reg y;
input [3:0]a;
input [1:0]s;
always @(s)
begin 
  if(s[0]==0 & s[1]==0)
     y=a[0];
  else if(s[0]==0 & s[1]==1)
     y=a[1];
  else if(s[0]==1 & s[1]==0)
     y=a[2];
  else 
     y=a[3];
end
endmodule
