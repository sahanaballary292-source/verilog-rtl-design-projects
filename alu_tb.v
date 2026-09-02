module alu_8_bit_tb;
  reg [7:0]a;
  reg [7:0]b;
  reg [2:0]opcode;
  wire [15:0]result;
  wire error;
  alu_8_bit uut(.a(a),
                .b(b),
                .opcode(opcode),
                .result(result),
                .error(error)
               );
  initial
    begin
      $dumpfile("dump .vcd");
      $dumpvars(0,alu_8_bit_tb);
      a=8'd20;
      b=8'd4;
      opcode=3'b000;
      #5;
      a=8'd20;
      b=8'd4;
      opcode=3'b001;
      #5;
      a=8'd20;
      b=8'd4;
      opcode=3'b010;
      #5;
      a=8'd20;
      b=8'd4;
      opcode=3'b011;
      #5;
      a=8'd20;
      b=8'd4;
      opcode=3'b100;
      #5;
      a=8'd20;
      b=8'd4;
      opcode=3'b101;
      #5;
      a=8'd20;
      b=8'd4;
      opcode=3'b110;
      #5;
      a=8'd20;
      b=8'd4;
      opcode=3'b111;
      #5;
      a=8'd20;
      b=8'd0;
      opcode=3'b011;
      #5;
      $finish;
    end
endmodule
  
