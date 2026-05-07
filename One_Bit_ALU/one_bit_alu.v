module onebit_aluc_carry_ovfl(
input A,B,Cin,
input[1:0]opcode,
output reg result, carry, overflow,sum
    );
always@(*) begin
 sum = 0;
 result = 0;
 carry = 0;
 overflow = 0;
 case(opcode)
   2'b00:
	begin
	 result=A&B;
	end
	2'b01:
	begin
	 result=A|B;
	end
	2'b10:
	begin
	 sum = A^B^Cin;
	 carry = (A&B)|(B&Cin)|(A&Cin);
	 result = sum;
	 overflow = Cin^carry;
	end
	2'b11:
	begin
	 result = A^B;
	end
 endcase
 end

endmodule
