module barrel_shifter (
    input  [7:0] a,
    input  [2:0] shift,
    output [7:0] y
);

wire [7:0] s1;
wire [7:0] s2;

// Stage 1: Shift by 1

assign s1[7] = shift[0] ? a[6] : a[7];
assign s1[6] = shift[0] ? a[5] : a[6];
assign s1[5] = shift[0] ? a[4] : a[5];
assign s1[4] = shift[0] ? a[3] : a[4];
assign s1[3] = shift[0] ? a[2] : a[3];
assign s1[2] = shift[0] ? a[1] : a[2];
assign s1[1] = shift[0] ? a[0] : a[1];
assign s1[0] = shift[0] ? 1'b0 : a[0];


// Stage 2: Shift by 2

assign s2[7] = shift[1] ? s1[5] : s1[7];
assign s2[6] = shift[1] ? s1[4] : s1[6];
assign s2[5] = shift[1] ? s1[3] : s1[5];
assign s2[4] = shift[1] ? s1[2] : s1[4];
assign s2[3] = shift[1] ? s1[1] : s1[3];
assign s2[2] = shift[1] ? s1[0] : s1[2];
assign s2[1] = shift[1] ? 1'b0 : s1[1];
assign s2[0] = shift[1] ? 1'b0 : s1[0];


// Stage 3: Shift by 4

assign y[7] = shift[2] ? s2[3] : s2[7];
assign y[6] = shift[2] ? s2[2] : s2[6];
assign y[5] = shift[2] ? s2[1] : s2[5];
assign y[4] = shift[2] ? s2[0] : s2[4];
assign y[3] = shift[2] ? 1'b0 : s2[3];
assign y[2] = shift[2] ? 1'b0 : s2[2];
assign y[1] = shift[2] ? 1'b0 : s2[1];
assign y[0] = shift[2] ? 1'b0 : s2[0];

endmodule
