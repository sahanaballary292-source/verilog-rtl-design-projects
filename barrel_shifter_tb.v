module barrel_shifter_tb;

reg [7:0] a;
reg [2:0] shift;
wire [7:0] y;

barrel_shifter uut(
    .a(a),
    .shift(shift),
    .y(y)
);

initial begin

    $dumpfile("dump.vcd");
    $dumpvars(0, barrel_shifter_tb);

    a = 8'b01001011;

    shift = 3'b000; #10;  // 75
    shift = 3'b001; #10;  // 150
    shift = 3'b010; #10;  // 44
    shift = 3'b011; #10;  // 88
    shift = 3'b100; #10;  // 176
    shift = 3'b101; #10;  // 96
    shift = 3'b110; #10;  // 192
    shift = 3'b111; #10;  // 128

    $finish;

end

endmodule
