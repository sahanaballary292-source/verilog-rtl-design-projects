module digital_calculator_tb;
  reg [7:0]a;
  reg  [7:0]b;
  reg  [1:0]opcode;
  wire [15:0]result;
  wire error;
  digital_calculator uut(
    .a(a),.b(b),.opcode(opcode),.result(result),.error(error));
  initial 
    begin
      $dumpfile("dump vcd");
      $dumpvars(0,digital_calculator_tb);
      a=8'd22;
      b=8'd2;
      opcode=2'b00;
      #5;
      a=8'd22;
      b=8'd8;
      opcode=2'b01;
      #5;
      a=8'd22;
      b=8'd2;
      opcode=2'b10;
      #5;
      a=8'd22;
      b=8'd2;
      opcode=2'b11;
      #5;
      a=8'd4;
      b=8'd0;
      opcode=2'b11;
      #5;
      $finish;
    end
endmodule
