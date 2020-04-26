// Verilog test fixture created from schematic C:\Users\eckelsjd\Documents\RHIT - Sophomore\CSSE 132\Lab\1819a-csse132-eckelsjd\lab02\add1b.sch - Tue Sep 11 11:37:38 2018

`timescale 1ns / 1ps

module add1b_tb_0;

// Inputs
   reg ci;
   reg b;
   reg a;
	reg i;
	reg j;

// Output
   wire r;
   wire co;

// Bidirs

// Instantiate the UUT
   add1b UUT (
		.ci(ci), 
		.b(b), 
		.a(a), 
		.r(r), 
		.co(co)
   );
// Initialize Inputs
initial begin
	ci = 0;

	//repeat loop test
	a = 1'b0;
	b = 1'b0;
	i = 1'b0;
	j = 1'b0;
	#1;
	repeat(2) begin
		repeat(2) begin
			a = i;
			b = j;
			#1;
			if ((a + b) == (r))
				$display("Passed: a=%d, b=%d, r=%d",a,b,r);
			else
				$display("Failed: a=%d, b=%d, r=%d",a,b,r);
			j = j + 1;
		end
		i = i + 1;
	end
		
end

endmodule
