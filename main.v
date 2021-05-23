module main( bd, bd1, h, h1, HD);
input [3:0] bd, bd1;
input HD;
wire [6:0] val;
output [6:0] h,h1;

binconv pt1 (.bcd1(bd),.bcd0(bd1),.bin(val));
seg7dec pt2 (.con(HD),.Hex(h),.Hex1(h1),.I(val)); 






endmodule 