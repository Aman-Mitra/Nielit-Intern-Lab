module Fourto1mux_tb();
	reg [3:0] in;
	reg [1:0] select;
	wire y;
	
	Fourto1mux MUX(in,select,y);
	
	initial begin
		$dumpfile("dump_Fourto1mux.vcd");
		$dumpvars();
	end

	initial begin
		$display("time= %t in = %0b| select =%0b | y =%b",$time, in,select,y);
		$monitor("time= %t in = %0b| select =%0b | y = %b",$time,in,select,y);
		in= 4'b0001; select=2'b00;
		#10;
		in= 4'b0010; select=2'b01;
		#10;
		in= 4'b0100; select=2'b10;
		#10;
		in= 4'b1000; select=2'b11;
		#20;
		$finish();
	end

endmodule 
