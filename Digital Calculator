module digital_calculator(a,b,opcode,result,error);
  input [7:0]a;
  input [7:0]b;
  input [1:0]opcode;
  output reg [15:0]result;
  output reg error;
  always@(*)
    begin
      result=16'd0;
      error=1'b0;
      case(opcode)
        2'b00:result=a+b;
        2'b01:result=a-b;
        2'b10:result=a*b;
        2'b11: begin
          if(b==8'b0)
            begin
              result=16'd0;
              error=1'b1;
            end
          else begin
            result=a/b;
            error=1'b0;
          end
        end
      endcase
    end
endmodule

