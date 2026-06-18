module and_gate_tb();
	reg a,b;
	wire y;
	
	and_gate AND(a,b,y);
	
	initial begin
		$dumpfile("dump_and_gate.vcd");
		$dumpvars();
	end

	initial begin
		$display(" time=%t A = %0b| B =%0b | out =%b", $time, a, b, y);
		$monitor(" time=%t A = %0b| B =%0b | out = %b", $time,a, b, y);
		a=0;b=0;
		#10;
		a=0;b=1;
		#10;
		a=1;b=0;
		#10;
		a=1;b=1;
		#10;
		$finish();
	end

endmodule
