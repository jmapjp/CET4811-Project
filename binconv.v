module binconv (bcd1, bcd0, bin );
input wire[3:0] bcd1, bcd0;
output wire [4:0] bin;


assign bin = (bcd1 * 4'b0001) + {1'b0, bcd0};

endmodule 
