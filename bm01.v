module bm(y,clk,reset,a);
output y;
reg y;
input clk,reset,a;
always @ (posedge clk or negedge reset)
  begin
   if (!reset)
     y <= 1'b0;
   else
     if (a)
       y <= ~y;
     else
       y <= y;
  end 
endmodule
  
