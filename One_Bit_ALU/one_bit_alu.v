`timescale 1ns / 1ps
module onebit_alu(
  input A,B,
  input[1:0]opcode,
  output reg result
    );
always@(*) begin
 case(opcode)
      2'b00: result=A&B;
		2'b01: result=A|B;
		2'b10: result=A^B;
		2'b11: result=A+B;
 endcase
end 

endmodule
