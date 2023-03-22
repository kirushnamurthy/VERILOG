module fsm(z,x,clk);
output reg  z;
input [3:0]x;
input clk;
parameter s0=3'b000;
parameter s1=3'b001;
parameter s2=3'b010;
parameter s3=3'b011;
parameter s4=3'b100;
parameter s5=3'b101;
reg [2:0]PS,NS;
always @(posedge clk)
begin
 PS <= NS;
end
always @(PS or x)
begin
 case(PS)
   s0:begin
       z=0;
       if(x==4'b0001)
         NS = s1;
       else
         NS = s0;
      end
   s1:begin
       z=0;
       if(x==4'b0000)
         NS =s2;
       else
         NS =s0;
      end
   s2:begin
       z=0;
       if (x==4'b0010)
         NS=s3;
       else if (x==4'b0001)
         NS=s1;
       else
         NS=s0;
      end
   s3:begin
       z=0;
       if (x==4'b0010)
         NS=s4;
       else if (x==4'b0001)
         NS=s1;
       else
         NS=s0;
      end
   s4:begin
       z=0;
       if(x==4'b0001)
         NS =s5;
       else
         NS =s0;
      end
   s5:begin
       
       if(x==4'b0000)
         begin
          z=1;
          NS =s2;
         end
       else
         begin
          z=0;
          NS =s0;
         end
      end
 endcase
end
endmodule

