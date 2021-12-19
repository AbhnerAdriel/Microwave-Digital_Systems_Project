`timescale 1ns/1ps
module decoder_tb();

	reg [3:0 ]sec_ones_TB, sec_tens_TB, min_TB ;
    wire [6:0] min_segs_TB , sec_ones_seg_TB , sec_tens_seg_TB ;

	decoder DUT(
        .sec_ones(sec_ones_TB), .sec_tens(sec_tens_TB), .min(min_TB),
        .sec_ones_segs(sec_ones_seg_TB) , .sec_tens_segs(sec_tens_seg_TB),
        .min_segs(min_segs_TB)  
    );
	initial
		begin
		
			$dumpfile("decoder_tb.vcd");
			$dumpvars(0, decoder_tb);

			    sec_ones_TB=0; sec_tens_TB=0; min_TB=0;    

			    #10 sec_ones_TB=1; sec_tens_TB=1; min_TB=0;    
			    #10 sec_ones_TB=1; sec_tens_TB=1; min_TB=0;    
			    #10 sec_ones_TB=1; sec_tens_TB=1; min_TB=0;    
			    #10 sec_ones_TB=1; sec_tens_TB=1; min_TB=0;    
			    #10 sec_ones_TB=1; sec_tens_TB=1; min_TB=1;    
			    #10 sec_ones_TB=1; sec_tens_TB=1; min_TB=1;    
			    #10 sec_ones_TB=1; sec_tens_TB=1; min_TB=1;    
			    #10 sec_ones_TB=1; sec_tens_TB=1; min_TB=1;    

			    #10 sec_ones_TB=1; sec_tens_TB=1; min_TB=0;    
			    #10 sec_ones_TB=1; sec_tens_TB=1; min_TB=0;    
			    #10 sec_ones_TB=1; sec_tens_TB=1; min_TB=0;    
			    #10 sec_ones_TB=1; sec_tens_TB=1; min_TB=0;    
			    #10 sec_ones_TB=1; sec_tens_TB=1; min_TB=1;    
			    #10 sec_ones_TB=1; sec_tens_TB=1; min_TB=1;    
			    #10 sec_ones_TB=1; sec_tens_TB=1; min_TB=1;    
			    #10 sec_ones_TB=1; sec_tens_TB=1; min_TB=1;    

			    #10 sec_ones_TB=1; sec_tens_TB=1; min_TB=1;    
			    #10 sec_ones_TB=1; sec_tens_TB=1; min_TB=1;    
			    #10 sec_ones_TB=1; sec_tens_TB=1; min_TB=1;    
			    #10 sec_ones_TB=1; sec_tens_TB=1; min_TB=1;    
			    #10 sec_ones_TB=1; sec_tens_TB=1; min_TB=1;    
			    #10 sec_ones_TB=1; sec_tens_TB=0; min_TB=1;    
			    #10 sec_ones_TB=1; sec_tens_TB=0; min_TB=1;    
			    #10 sec_ones_TB=1; sec_tens_TB=0; min_TB=1;    

			    #10 sec_ones_TB=0; sec_tens_TB=1; min_TB=1;    
			    #10 sec_ones_TB=0; sec_tens_TB=1; min_TB=1;    
			    #10 sec_ones_TB=0; sec_tens_TB=1; min_TB=1;    
			    #10 sec_ones_TB=0; sec_tens_TB=1; min_TB=1;    
			    #10 sec_ones_TB=0; sec_tens_TB=1; min_TB=1;    
			    #10 sec_ones_TB=1; sec_tens_TB=1; min_TB=1;    
			    #10 sec_ones_TB=1; sec_tens_TB=1; min_TB=1;    
			    #10 sec_ones_TB=1; sec_tens_TB=1; min_TB=1;    

			    #10 sec_ones_TB=1; sec_tens_TB=1; min_TB=1;   
			    #50 sec_ones_TB=0; sec_tens_TB=1; min_TB=1;   
			    #5 sec_ones_TB=1; sec_tens_TB=1; min_TB=1;   
			    #50 sec_ones_TB=1; sec_tens_TB=1; min_TB=1;   
			    #50 sec_ones_TB=1; sec_tens_TB=1; min_TB=1;   


		end

endmodule
