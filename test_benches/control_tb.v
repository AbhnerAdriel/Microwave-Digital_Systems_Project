`timescale 1ns/1ps
module control_tb();


    //startn , stopn , clearn, door_closed, timer_done, 
	reg startn_TB, stopn_TB, clearn_TB , doorClosed_TB, timerDone_TB;
	wire magOn_TB;

	control DUT(
        .startn(startn_TB), .stopn(stopn_TB), .clearn(clearn_TB),
        .door_closed(doorClosed_TB) , .timer_done(timerDone_TB),
        .mag_on(magOn_TB)  
    );
	initial
		begin
		
			$dumpfile("control_tb.vcd");
			$dumpvars(0, control_tb);

			    startn_TB=0; stopn_TB=0; clearn_TB=0; timerDone_TB=0; doorClosed_TB=0;   

			    #10 startn_TB=1; stopn_TB=1; clearn_TB=0; timerDone_TB=0; doorClosed_TB=0;   
			    #10 startn_TB=1; stopn_TB=1; clearn_TB=0; timerDone_TB=0; doorClosed_TB=1;   
			    #10 startn_TB=1; stopn_TB=1; clearn_TB=0; timerDone_TB=1; doorClosed_TB=0;   
			    #10 startn_TB=1; stopn_TB=1; clearn_TB=0; timerDone_TB=1; doorClosed_TB=1;   
			    #10 startn_TB=1; stopn_TB=1; clearn_TB=1; timerDone_TB=0; doorClosed_TB=0;   
			    #10 startn_TB=1; stopn_TB=1; clearn_TB=1; timerDone_TB=0; doorClosed_TB=1;   
			    #10 startn_TB=1; stopn_TB=1; clearn_TB=1; timerDone_TB=1; doorClosed_TB=0;   
			    #10 startn_TB=1; stopn_TB=1; clearn_TB=1; timerDone_TB=1; doorClosed_TB=1;   

			    #10 startn_TB=1; stopn_TB=1; clearn_TB=0; timerDone_TB=0; doorClosed_TB=0;   
			    #10 startn_TB=1; stopn_TB=1; clearn_TB=0; timerDone_TB=0; doorClosed_TB=1;   
			    #10 startn_TB=1; stopn_TB=1; clearn_TB=0; timerDone_TB=1; doorClosed_TB=0;   
			    #10 startn_TB=1; stopn_TB=1; clearn_TB=0; timerDone_TB=1; doorClosed_TB=1;   
			    #10 startn_TB=1; stopn_TB=1; clearn_TB=1; timerDone_TB=0; doorClosed_TB=0;   
			    #10 startn_TB=1; stopn_TB=1; clearn_TB=1; timerDone_TB=0; doorClosed_TB=1;   
			    #10 startn_TB=1; stopn_TB=1; clearn_TB=1; timerDone_TB=1; doorClosed_TB=0;   
			    #10 startn_TB=1; stopn_TB=1; clearn_TB=1; timerDone_TB=1; doorClosed_TB=1;   

			    #10 startn_TB=1; stopn_TB=1; clearn_TB=1; timerDone_TB=1; doorClosed_TB=0;   
			    #10 startn_TB=1; stopn_TB=1; clearn_TB=1; timerDone_TB=1; doorClosed_TB=0;   
			    #10 startn_TB=1; stopn_TB=1; clearn_TB=1; timerDone_TB=1; doorClosed_TB=0;   
			    #10 startn_TB=1; stopn_TB=1; clearn_TB=1; timerDone_TB=0; doorClosed_TB=0;   
			    #10 startn_TB=1; stopn_TB=1; clearn_TB=1; timerDone_TB=0; doorClosed_TB=0;   
			    #10 startn_TB=1; stopn_TB=0; clearn_TB=1; timerDone_TB=0; doorClosed_TB=0;   
			    #10 startn_TB=1; stopn_TB=0; clearn_TB=1; timerDone_TB=0; doorClosed_TB=0;   
			    #10 startn_TB=1; stopn_TB=0; clearn_TB=1; timerDone_TB=0; doorClosed_TB=0;   

			    #10 startn_TB=0; stopn_TB=1; clearn_TB=1; timerDone_TB=0; doorClosed_TB=0;   
			    #10 startn_TB=0; stopn_TB=1; clearn_TB=1; timerDone_TB=0; doorClosed_TB=1;   
			    #10 startn_TB=0; stopn_TB=1; clearn_TB=1; timerDone_TB=1; doorClosed_TB=0;   
			    #10 startn_TB=0; stopn_TB=1; clearn_TB=1; timerDone_TB=1; doorClosed_TB=1;   
			    #10 startn_TB=0; stopn_TB=1; clearn_TB=1; timerDone_TB=0; doorClosed_TB=0;   
			    #10 startn_TB=1; stopn_TB=1; clearn_TB=1; timerDone_TB=0; doorClosed_TB=1;   
			    #10 startn_TB=1; stopn_TB=1; clearn_TB=1; timerDone_TB=1; doorClosed_TB=0;   
			    #10 startn_TB=1; stopn_TB=1; clearn_TB=1; timerDone_TB=1; doorClosed_TB=1;   

			    #10 startn_TB=1; stopn_TB=1; clearn_TB=1; timerDone_TB=0; doorClosed_TB=1;   
			    #50 startn_TB=0; stopn_TB=1; clearn_TB=1; timerDone_TB=0; doorClosed_TB=1;   
			    #5 startn_TB=1; stopn_TB=1; clearn_TB=1; timerDone_TB=0; doorClosed_TB=1;   
			    #50 startn_TB=1; stopn_TB=1; clearn_TB=1; timerDone_TB=1; doorClosed_TB=1;   
			    #50 startn_TB=1; stopn_TB=1; clearn_TB=1; timerDone_TB=1; doorClosed_TB=0;   


		end

endmodule
