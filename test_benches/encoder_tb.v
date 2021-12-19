`timescale 1us/1ps
module encoder_tb ();

    reg [9:0] key;
    reg clk;
    reg enablen;

    integer i;

    encoder DUT(.key(key), .clk(clk), .enablen(enablen));

    reg muxa, muxb;
    mux2x1 DUT2(.sel(clk), .a(muxa), .b(muxb));

    initial begin
        $dumpfile("test/encoder_tb.vcd");
        $dumpvars;

        clk = 1;
        enablen = 0;
        key = 9'b000000000;

        for(i = 0; i < 3005; i++) begin
            #5000 clk <= ~clk;
        end


        #10;
    end

    initial begin
        #1000 key = 0;
        #100000 key = 1;
        #200000 key = 0;

        #120000 key = 1;
        #1000 key = 0;
        #3000 key = 1;
        #5000 key = 0;
        #2000 key = 1;
        #8000 key = 0;
        #9000 key = 1;

        #500000 key = 0;
        enablen = 1;
        #10000000;
    end

    initial begin
        muxa = 0;
        muxb = 0;

        #1000 muxa = 0;
        #1000 muxb = 0;

        #1000 muxa = 0;
        #1000 muxb = 1;

        #1000 muxa = 1;
        #1000 muxb = 0;

        #1000 muxa = 1;
        #1000 muxb = 1;

        #100;
        
    end
    
endmodule