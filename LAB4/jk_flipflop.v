module jk_flipflop(clk,rst,j,k,q);
	input clk,rst;
	input j,k;
	output reg q;
	
	always @(posedge clk or posedge rst)  begin
		if (rst) q<=0;   // Resets the output
		else begin
			case ({j,k}) 
				2'b00: q<=q;    // Hold/Memory mode
				2'b01: q<=0;
				2'b10: q<=1;
				2'b11: q<=~q;   // Toggle mode where race around condition is introduced in the latch version
			endcase
		end
	end

endmodule
