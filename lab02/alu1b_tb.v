// Verilog test fixture created from schematic C:\Users\eckelsjd\Documents\RHIT - Sophomore\CSSE 132\Lab\1819a-csse132-eckelsjd\lab02\alu_1b.sch - Wed Sep 12 09:37:46 2018

`timescale 1ns / 1ps

module alu_1b_tb();

// Inputs
   reg a;
   reg b;
   reg [2:0] op;
   reg ci;
   reg slt;
	reg i;
	reg j;

// Output
   wire r;
   wire co;
	wire addR;

// Bidirs

// Instantiate the UUT
   alu_1b UUT (
		.a(a), 
		.b(b), 
		.op(op), 
		.ci(ci), 
		.r(r), 
		.co(co), 
		.slt(slt)
   );
 
 initial begin
 // Initialize Inputs
	a = 0;
	b = 0;
	op = 3'b000;
	ci = 0;
	slt = 0;
	addR = 0;
	#100;
	
// Test AND
	a = 0;
	b = 0;
	op = 3'b000;
	i = 0;
	j = 0;
	#1;
	repeat(2) begin
		repeat(2) begin
			a = i;
			b = j;
			#1;
			if ((a && b) == (r))
				$display("Passed AND: a=%d, b=%d, r=%d",a,b,r);
			else
				$display("Failed AND: a=%d, b=%d, r=%d",a,b,r);
			j = j + 1;
		end
		i = i + 1;
	end
	#40;
	$display(" ");
	
// Test OR
	a = 0;
	b = 0;
	op = 3'b001;
	i = 0;
	j = 0;
	#1;
	repeat(2) begin
		repeat(2) begin
			a = i;
			b = j;
			#1;
			if ((a || b) == (r))
				$display("Passed OR: a=%d, b=%d, r=%d",a,b,r);
			else
				$display("Failed OR: a=%d, b=%d, r=%d",a,b,r);
			j = j + 1;
		end
		i = i + 1;
	end
	#40;
	$display(" ");
	
$finish;
end

endmodule
