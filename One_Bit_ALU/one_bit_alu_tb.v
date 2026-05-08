`timescale 1ns / 1ps

module onebit_alu_cyof_test;
	reg A;
	reg B;
	reg Cin;
	reg[1:0]opcode;
	wire result;
	wire carry;
	wire overflow;
	wire sum;

	onebit_aluc_carry_ovfl uut (.A(A), .B(B), .Cin(Cin), .opcode(opcode), .result(result), 
	        .carry(carry), .overflow(overflow), .sum(sum));

	initial begin
		
		A = 0;
		B = 0;
		Cin = 0;#20;
		opcode = 2'b00;
		A=0; B=0; Cin=0;#10;
		A=0; B=0; Cin=1;#10;
		A=0; B=1; Cin=0;#10;
		A=0; B=1; Cin=1;#10;
		A=1; B=0; Cin=0;#10;
		A=1; B=0; Cin=1;#10;
		A=1; B=1; Cin=0;#10;
		A=1; B=1; Cin=1;#20;
		opcode = 2'b01;
		A=0; B=0; Cin=0;#10;
		A=0; B=0; Cin=1;#10;
		A=0; B=1; Cin=0;#10;
		A=0; B=1; Cin=1;#10;
		A=1; B=0; Cin=0;#10;
		A=1; B=0; Cin=1;#10;
		A=1; B=1; Cin=0;#10;
		A=1; B=1; Cin=1;#20;
		opcode = 2'b10;
		A=0; B=0; Cin=0;#10;
		A=0; B=0; Cin=1;#10;
		A=0; B=1; Cin=0;#10;
		A=0; B=1; Cin=1;#10;
		A=1; B=0; Cin=0;#10;
		A=1; B=0; Cin=1;#10;
		A=1; B=1; Cin=0;#10;
		A=1; B=1; Cin=1;#20;
		opcode = 2'b11;
		A=0; B=0; Cin=0;#10;
		A=0; B=0; Cin=1;#10;
		A=0; B=1; Cin=0;#10;
		A=0; B=1; Cin=1;#10;
		A=1; B=0; Cin=0;#10;
		A=1; B=0; Cin=1;#10;
		A=1; B=1; Cin=0;#10;
		A=1; B=1; Cin=1;#20;
$finish;
	end
	initial begin 
	$monitor("Time=%0t A=%b B=%b Cin=%b opcode=%b result=%b carry=%b overflow=%b sum=%b",$time,A,B,Cin,opcode,result,carry,overflow,sum);
	end
      
endmodule

