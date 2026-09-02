module alu_8_bit(a,b,opcode,result,error);
  input [7:0]a;
  input [7:0]b;
  input [2:0]opcode;
  output reg [15:0]result;
  output reg error;
  always@(*)
    begin
      result=16'd0;
      error=1'b0;
      case(opcode)
        3'b000:result=a+b;
        3'b001:result=a-b;
        3'b010:result=a*b;
        3'b011:begin
          if(b==8'd0)
            begin
              result=16'd0;
              error=1'b1;
            end
          else
            begin
              result=a/b;
              error=1'b0;
            end
        end
        3'b100:result=a&b;
        3'b101:result=a|b;
        3'b110:result= a^b;
        3'b111:result=~a;
      endcase
    end
endmodule
        
