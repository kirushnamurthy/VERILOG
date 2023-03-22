module mc2bit_BM(a,b,g,l,e);
output g,l,e;
reg g,l,e;
input [1:0]a,b;
always @(a,b)
begin 
  if(a>b)
    begin
       g=1'b1;
       l=1'b0;
       e=1'b0;
    end
  else if(a<b)
    begin
       g=1'b0;
       l=1'b1;
       e=1'b0;
    end
  else
    begin
       g=1'b0;
       l=1'b0;
       e=1'b1;
    end
end
endmodule
    
       

       
