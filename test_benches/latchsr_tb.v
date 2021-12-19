`timescale 1ns/1ps
module latchsr_tb();

	reg R_TB, S_TB;
	wire Q_TB;

	latchsr DUT(.R(R_TB), .S(S_TB), .Q(Q_TB));
	initial
		begin
		
			$dumpfile("latchsr_tb.vcd");
			$dumpvars(0, latchsr_tb);
            
			    S_TB=0; R_TB=0;
			#10 S_TB=0; R_TB=0;
			#10 S_TB=0; R_TB=1;
			#10 S_TB=0; R_TB=1;
			#10 S_TB=1; R_TB=0;
			#10 S_TB=1; R_TB=0;
			#10 S_TB=0; R_TB=0;
			#10 S_TB=1; R_TB=0;
			#10 S_TB=1; R_TB=0;
			#10 S_TB=1; R_TB=0;
			#10 S_TB=1; R_TB=0;
			#10 S_TB=1; R_TB=0;
			#10 S_TB=0; R_TB=1;
			#10 S_TB=0; R_TB=1;
			#10 S_TB=0; R_TB=0;
			#10 S_TB=0; R_TB=0;
		end

endmodule
