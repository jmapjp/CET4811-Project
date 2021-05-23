// Seven-Segement-Display
module seg7dec(con,I, Hex, Hex1);
input con;
input [4:0] I; // 5-bit Input 
	output reg [6:0] Hex; // Output pins 7-bit value
	output reg [6:0] Hex1; 
	
			/* -Logic Truth Table 
|  Hex06, Hex05, Hex04, Hex03, Hex02, Hex01, Hex00 | Char
|    1		0		 0		  0		0		 0		  0	| 0
|	  1      1      1      1      0		 0  	  1 	| 1	
|	  0		1		 0		  0		1		 0		  0	| 2
|	  0		1		 1		  0  		0		 0 	  0	| 3	
| 	  1		0		 1		  1		0		 0		  1	| 4
|	  0		0		 1		  0		0		 1 	  0	| 5
|	  0		0		 0		  0		0	    1	     0	| 6
|	  1		1		 1		  1		0		 0		  0	| 7
|	  0		0		 0		  0		0		 0		  0	| 8
|	  0		0		 1		  0		0		 0		  0	| 9
|	  0		0		 0		  1		0		 0		  0	| A
|	  0		0		 0		  0		0		 1		  1	| B
|	  1		0		 0		  0		1		 1		  0	| C
|	  0		1		 0		  0		0		 0	     1	| D
|	  0		0		 0		  0		1		 1	     0	| E
|	  0		0		 0	     1		1		 1		  0	| F
	*/
	

	
	
		always @ (I) begin 
		if (con) //Xor gate = 1
			case(I)
	0: begin Hex = 7'b1000000;Hex1 = 7'b1111111;/* Char 0 */
	end 
	1: begin Hex =	7'b1111001;Hex1 = 7'b1111111;  // Char 1
	end
	2: begin Hex = 7'b0100100;Hex1 = 7'b1111111; //Char 2
	end
	3: begin Hex = 7'b0110000;Hex1 = 7'b1111111;// Char 3
	end
	4: begin Hex = 7'b0011001;Hex1 = 7'b1111111;// Char 4
	end
	5: begin Hex = 7'b0010010;Hex1 = 7'b1111111;// Char 5
	end 
	6: begin Hex = 7'b0000010;Hex1 = 7'b1111111;// Char 6
	end
	7: begin Hex = 7'b1111000;Hex1 = 7'b1111111;//Char 7
	end
	8: begin Hex = 7'b0000000;Hex1 = 7'b1111111; end // Char 8
	9: begin Hex = 7'b0010000;Hex1 = 7'b1111111; end //Char 9
	10: begin Hex = 7'b0001000;Hex1 = 7'b1111111; end//Char A
	11: begin Hex = 7'b0000011;Hex1 = 7'b1111111; end//Char B
	12: begin Hex = 7'b1000110;Hex1 = 7'b1111111; end//Char C
	13: begin Hex = 7'b0100001;Hex1 = 7'b1111111; end//Char D
	14: begin Hex = 7'b0000110;Hex1 = 7'b1111111; end//Char E
	15: begin Hex = 7'b0001110;Hex1 = 7'b1111111; end//Char F
	16: begin Hex = 7'b1000000;Hex1 =7'b1111001; end //Char 10
	17: begin Hex = 7'b1111001;Hex1 =7'b1111001; end //Char 11
	18: begin Hex = 7'b0100100;Hex1 =7'b1111001; end //Char 12
	19: begin Hex = 7'b0110000;Hex1 =7'b1111001; end //Char 13 
	20: begin Hex = 7'b0011001;Hex1 =7'b1111001; end //Char 14
	21: begin Hex = 7'b0010010;Hex1 =7'b1111001; end //Char 15
	22: begin Hex = 7'b0000010;Hex1 =7'b1111001; end //Char 16
	23: begin Hex = 7'b1111000;Hex1 =7'b1111001; end //Char 17
	24: begin Hex = 7'b0000000;Hex1 =7'b1111001; end //Char 18
	25: begin Hex = 7'b0010000;Hex1 =7'b1111001; end //Char 19
	26: begin Hex = 7'b0001000;Hex1 =7'b1111001; end //Char 1A
	27: begin Hex = 7'b0000011;Hex1 =7'b1111001; end //Char 1B
	28: begin Hex = 7'b1000110;Hex1 =7'b1111001; end //Char 1C
	29: begin Hex = 7'b0100001;Hex1 =7'b1111001; end //Char 1D
	30: begin Hex = 7'b0000110;Hex1 =7'b1111001; end //Char 1E
	31: begin Hex = 7'b0001110;Hex1 =7'b1111001; end //Char 1F
	default: Hex = 7'bxxxxxxx; // default bits
	endcase 


else
		case (I)
	0: begin Hex =  7'b1000000;Hex1 = 7'b1111111; end// Char 0
	1: begin Hex =	7'b1111001;Hex1 = 7'b1111111; end  // Char 1
	2: begin Hex = 7'b0100100;Hex1 = 7'b1111111; end //Char 2
	3: begin Hex = 7'b0110000;Hex1 = 7'b1111111; end // Char 3
	4: begin Hex = 7'b0011001;Hex1 = 7'b1111111; end // Char 4
	5: begin Hex = 7'b0010010;Hex1 = 7'b1111111;end // Char 5
	6: begin Hex = 7'b0000010;Hex1 = 7'b1111111;end // Char 6
	7: begin Hex = 7'b1111000;Hex1 = 7'b1111111;end //Char 7
	8: begin Hex = 7'b0000000;Hex1 = 7'b1111111;end // Char 8
	9: begin Hex = 7'b0010000;Hex1 = 7'b1111111;end //Char 9
	10: begin Hex = 7'b1000000;Hex1 =7'b1111001;end //Char 10
	11: begin Hex = 7'b1111001;Hex1 =7'b1111001;end //Char 11
	12: begin Hex = 7'b0100100;Hex1 =7'b1111001;end //Char 12
	13: begin Hex = 7'b0110000;Hex1 =7'b1111001; end//Char 13 
	14: begin Hex = 7'b0011001;Hex1 =7'b1111001; end//Char 14
	15: begin Hex = 7'b0010010;Hex1 =7'b1111001;end //Char 15
	16: begin Hex = 7'b0000010;Hex1 =7'b1111001;end //Char 16
	17: begin Hex = 7'b1111000;Hex1 =7'b1111001;end //Char 17
	18: begin Hex = 7'b0000000;Hex1 =7'b1111001;end //Char 18
	19: begin Hex = 7'b0010000;Hex1 =7'b1111001;end //Char 19
	20: begin Hex = 7'b1000000;Hex1 =7'b0100100;end //Char 20
	21: begin Hex = 7'b1111001;Hex1 =7'b0100100;end //Char 21
	22: begin Hex = 7'b0100100;Hex1 =7'b0100100; end//Char 22
	23: begin Hex = 7'b0110000;Hex1 =7'b0100100;end //Char 23
	24: begin Hex = 7'b0011001;Hex1 =7'b0100100;end //Char 24
	25: begin Hex = 7'b0010010;Hex1 =7'b0100100; end//Char 25
	26: begin Hex = 7'b0000010;Hex1 =7'b0100100;end //Char 26
	27: begin Hex = 7'b1111000;Hex1 =7'b0100100; end//Char 27
	28: begin Hex = 7'b0000000;Hex1 =7'b0100100;end //Char 28
	29: begin Hex = 7'b0010000;Hex1 =7'b0100100; end//Char 29
	30: begin Hex = 7'b1000000;Hex1 =7'b0110000; end//Char 30
	31: begin Hex = 7'b1111001;Hex1 =7'b0110000; end//Char 31
	default: Hex = 7'bxxxxxxx; // default bits
	endcase
	end 
endmodule 
