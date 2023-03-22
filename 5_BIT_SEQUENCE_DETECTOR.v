module sequenc(z,x,clk,reset);
output reg  z;
input x,clk,reset;
parameter s0=3'b000;
parameter s1=3'b001;
parameter s2=3'b010;
parameter s3=3'b011;
parameter s4=3'b100;
reg [2:0]PS,NS;
always @(posedge clk or posedge reset)
begin
 if(reset)
  PS <= 3'b000;
 else
  PS <= NS;
end
always @(PS or x)
begin
 case(PS)
   s0:begin
       z=0;
       NS=x?s0:s1;
      end
   s1:begin
       z=0;
       NS=x?s2:s1;
      end
   s2:begin
       z=0;
       NS=x?s3:s1;
      end
   s3:begin
       z=0;
       NS=x?s0:s4;
      end
   s4:begin
       z=x?1:0;
       NS=x?s0:s1;
      end
 endcase
end
endmodule

 