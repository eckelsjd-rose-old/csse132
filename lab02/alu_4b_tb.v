// Verilog test fixture created from schematic C:\Users\eckelsjd\Documents\RHIT - Sophomore\CSSE 132\Lab\1819a-csse132-eckelsjd\lab02\alu_4b.sch - Wed Sep 12 23:30:34 2018
// Joshua Eckels and Aaron Glave Lab02 - CSSE132
// Some tests do not account for factors such as overflow and carry in. Use the equations printed out for these test cases to determine if the code works.
`timescale 1ns / 1ps

module alu_4b_tb();

// Inputs
   reg [2:0] op;
   reg [3:0] a;
   reg [3:0] b;
	reg i; // loop var for a(3)
	reg j; // loop var for a(2)
	reg k; // loop var for a(1)
	reg m; // loop var for a(0)
	reg n; // loop var for b(0)
	reg p; // loop var for b(1)
	reg q; // loop var for b(2)
	reg s; // loop var for b(3)
	integer count; // var to help count print statements

// Output
   wire [3:0] r;

// Bidirs

// Instantiate the UUT
   alu_4b UUT (
		.op(op), 
		.a(a), 
		.b(b), 
		.r(r)
   );

initial begin
	// Initialize Inputs
	op = 3'b000;
	a = 4'b0000;
	b = 4'b0000;
	
	#100;
	// The test for AND and OR were commented out due to size of output for each test.
	
	// Test AND
	a = 4'b0000;
	b = 4'b0000;
	op = 3'b000;
	i = 0;
	j = 0;
	k = 0;
	m = 0;
	s = 0;
	q = 0;
	p = 0;
	n = 0;
	count = 3'd0;
	#1;
	//begin iterating through all 16 options for a
	repeat(2) begin
		repeat(2) begin
			repeat(2) begin
				repeat(2) begin
					a[0] = m;
					a[1] = k;
					a[2] = j;
					a[3] = i;
					#1;
					//begin iterating through all 16 options for b
					repeat(2) begin
						repeat(2) begin
							repeat(2) begin
								repeat(2) begin
									b[0] = n;
									b[1] = p;
									b[2] = q;
									b[3] = s;
									#1;
									
									if ((a&b)==r)
										$display("Passed AND : count = %d",count);
									else
										$display("Failed AND: count = %d",count);
									count = count + 1;
									n = n + 1;
								end
								p = p + 1;
							end
							q = q + 1;
						end
						s = s + 1;
					end
					
					m = m + 1;
				end
				k = k + 1;
			end
			j = j + 1;
		end
		i = i + 1;
	end
	#50;
	$display(" ");
	$display(" ");
	
// Test OR
	a = 4'b0000;
	b = 4'b0000;
	op = 3'b001;
	i = 0;
	j = 0;
	k = 0;
	m = 0;
	s = 0;
	q = 0;
	p = 0;
	n = 0;
	count = 3'd0;
	#1;
	//begin iterating through all 16 options for a
	repeat(2) begin
		repeat(2) begin
			repeat(2) begin
				repeat(2) begin
					a[0] = m;
					a[1] = k;
					a[2] = j;
					a[3] = i;
					#1;
					//begin iterating through all 16 options for b
					repeat(2) begin
						repeat(2) begin
							repeat(2) begin
								repeat(2) begin
									b[0] = n;
									b[1] = p;
									b[2] = q;
									b[3] = s;
									#1;
									
									if (((a[0] || b[0])==(r[0]))&&((a[1] || b[1])==(r[1]))&&((a[2] || b[2])==(r[2]))&&((a[3] || b[3])==(r[3])))
										$display("Passed OR : count =%d",count);
									else
										$display("Failed OR: count =%d",count);
									count = count + 1;
									n = n + 1;
								end
								p = p + 1;
							end
							q = q + 1;
						end
						s = s + 1;
					end
					
					m = m + 1;
				end
				k = k + 1;
			end
			j = j + 1;
		end
		i = i + 1;
	end
	#50;
	$display(" ");
	$display(" ");
	
	$display("Many of these tests will say 'failed' because the if statement does not account for carry in. Just pay attention to the equations.");
	
// Test ADD
	a = 4'b0000;
	b = 4'b0000;
	op = 3'b010;
	i = 0;
	j = 0;
	k = 0;
	m = 0;
	s = 0;
	q = 0;
	p = 0;
	n = 0;
	count = 3'd0;
	#1;
	//begin iterating through all 16 options for a
	repeat(2) begin
		repeat(2) begin
			repeat(2) begin
				repeat(2) begin
					a[0] = m;
					a[1] = k;
					a[2] = j;
					a[3] = i;
					#1;
					//begin iterating through all 16 options for b
					repeat(2) begin
						repeat(2) begin
							repeat(2) begin
								repeat(2) begin
									b[0] = n;
									b[1] = p;
									b[2] = q;
									b[3] = s;
									#1;
									// This If statement does not work for every value properly. Checks can be performed manually by checking the equation printed out.
									if ((a+b)==r)
										$display("Passed ADD: count = %d. %d%d%d%d + %d%d%d%d = %d%d%d%d",count,a[3],a[2],a[1],a[0],b[3],b[2],b[1],b[0],r[3],r[2],r[1],r[0]);
									else
										$display("Failed ADD : count = %d. %d%d%d%d + %d%d%d%d = %d%d%d%d",count,a[3],a[2],a[1],a[0],b[3],b[2],b[1],b[0],r[3],r[2],r[1],r[0]);
									count = count + 1;
									n = n + 1;
								end
								p = p + 1;
							end
							q = q + 1;
						end
						s = s + 1;
					end
					
					m = m + 1;
				end
				k = k + 1;
			end
			j = j + 1;
		end
		i = i + 1;
	end
	#50;
	$display("  ");
	$display(" ");
	
// Test SUB
	a = 4'b0000;
	b = 4'b0000;
	op = 3'b110;
	i = 0;
	j = 0;
	k = 0;
	m = 0;
	s = 0;
	q = 0;
	p = 0;
	n = 0;
	count = 3'd0;
	#1;
	//begin iterating through all 16 options for a
	repeat(2) begin
		repeat(2) begin
			repeat(2) begin
				repeat(2) begin
					a[0] = m;
					a[1] = k;
					a[2] = j;
					a[3] = i;
					#1;
					//begin iterating through all 16 options for b
					repeat(2) begin
						repeat(2) begin
							repeat(2) begin
								repeat(2) begin
									b[0] = n;
									b[1] = p;
									b[2] = q;
									b[3] = s;
									#1;
									// This If statement does not work for every value properly. Checks can be performed manually by checking the equation printed out.
									if ((a-b)==r)
										$display("Passed SUB: count = %d. %d%d%d%d - %d%d%d%d = %d%d%d%d",count,a[3],a[2],a[1],a[0],b[3],b[2],b[1],b[0],r[3],r[2],r[1],r[0]);
									else
										$display("Failed SUB : count = %d. %d%d%d%d - %d%d%d%d = %d%d%d%d",count,a[3],a[2],a[1],a[0],b[3],b[2],b[1],b[0],r[3],r[2],r[1],r[0]);
									count = count + 1;
									n = n + 1;
								end
								p = p + 1;
							end
							q = q + 1;
						end
						s = s + 1;
					end
					
					m = m + 1;
				end
				k = k + 1;
			end
			j = j + 1;
		end
		i = i + 1;
	end
	#50;
	$display(" ");
	$display(" ");
	
// Test SLT
	a = 4'b0000;
	b = 4'b0000;
	op = 3'b111;
	i = 0;
	j = 0;
	k = 0;
	m = 0;
	s = 0;
	q = 0;
	p = 0;
	n = 0;
	count = 3'd0;
	#1;
	//begin iterating through all 16 options for a
	repeat(2) begin
		repeat(2) begin
			repeat(2) begin
				repeat(2) begin
					a[0] = m;
					a[1] = k;
					a[2] = j;
					a[3] = i;
					#1;
					//begin iterating through all 16 options for b
					repeat(2) begin
						repeat(2) begin
							repeat(2) begin
								repeat(2) begin
									b[0] = n;
									b[1] = p;
									b[2] = q;
									b[3] = s;
									#1;
									// This If statement does not work for every value properly. Checks can be performed manually by checking the equation printed out.
									if (((a<b)&(r==1)) || ((!(a<b))&(r==0)))
										$display("Passed SLT: count = %d. %d%d%d%d - %d%d%d%d = %d%d%d%d",count,a[3],a[2],a[1],a[0],b[3],b[2],b[1],b[0],r[3],r[2],r[1],r[0]);
									else
										$display("Failed SLT : count = %d. %d%d%d%d - %d%d%d%d = %d%d%d%d",count,a[3],a[2],a[1],a[0],b[3],b[2],b[1],b[0],r[3],r[2],r[1],r[0]);
									count = count + 1;
									n = n + 1;
								end
								p = p + 1;
							end
							q = q + 1;
						end
						s = s + 1;
					end
					
					m = m + 1;
				end
				k = k + 1;
			end
			j = j + 1;
		end
		i = i + 1;
	end
	#50;
	$display("   ");
	$display("  ");
end
endmodule
