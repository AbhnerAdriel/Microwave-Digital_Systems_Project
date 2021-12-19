`timescale 1us/1ps
module microwave_tb();

    reg [9:0] key;
    reg clk, door_closed, stopn, clearn, startn;

    wire [6:0] sec_ones_seg, sec_tens_seg, mins_seg;
    wire mag_on;

    microwave DUT(.startn(startn), .clearn(clearn), .stopn(stopn), .door_closed(door_closed),
            .keypad(key), .clock(clk), .sec_ones_seg(sec_ones_seg),
            .sec_tens_seg(sec_tens_seg), .mins_seg(mins_seg), .mag_on(mag_on)); 
    integer i;


    initial begin
        $dumpfile("microwave_tb.vcd");
        $dumpvars(0, microwave_tb);

        clk = 1;

        for(i = 0; i < 700005; i++) begin
            #5000 clk <= ~clk;
        end
    end


    // ======== Os testes começam aqui ========


    initial begin
        // Teste 1

        key = 9'b000000000;
        door_closed = 0;
        stopn = 1;
        clearn = 1;
        startn = 1;

        // Digitando o 3
        #120000;
        key = 9'b000001000;
        #110000;
        key = 9'b000000000;

        // Digitando o 5
        #110000;
        key = 9'b000100000;
        #110000;
        key = 9'b000000000;

        // Digitando o 9
        #110000;
        key = 10'b1000000000;
        #110000;
        key = 9'b000000000;

        // Tentando abrir
        #110000;
        startn = 0;
        #110000;
        startn = 1;
        #510000;
        // Fechando a porta
        door_closed = 1;
        #100000;
        startn = 0;
        #100000;
        startn = 1;
        #300000000;
        

        // Teste 2
        key = 9'b000000000;
        door_closed = 1;
        stopn = 1;
        clearn = 1;
        startn = 1;

        // Digitando o 2
        #120000;
        key = 9'b000000100;
        #110000;
        key = 9'b000000000;

        // Digitando o 4
        #110000;
        key = 9'b000010000;
        #110000;
        key = 9'b000000000;

        // Digitando o 5
        #110000;
        key = 10'b0000100000;
        #110000;
        key = 9'b000000000;

        #110000;
        startn = 0;
        #100000;
        startn = 1;
        #3000000;
        // Abrindo a porta
        door_closed = 0;
        #810000;
        startn = 0;
        #100000;
        startn = 1;
        #100000;
        // Fechando a porta
        door_closed = 1;
        #100000;
        startn = 0;
        #100000;
        startn = 1;
        #300000000;

        // Teste 3

        key = 9'b000000000;
        door_closed = 1;
        stopn = 1;
        clearn = 1;
        startn = 1;

        // Digitando o 2
        #120000;
        key = 9'b000000100;
        #110000;
        key = 9'b000000000;

        // Digitando o 4
        #110000;
        key = 9'b000010000;
        #110000;
        key = 9'b000000000;

        // Digitando o 5
        #110000;
        key = 10'b0000100000;
        #110000;
        key = 9'b000000000;

        #110000;
        startn = 0;
        #100000;
        startn = 1;
        #3000000;
        // CLicando em parar
        stopn = 0;
        #810000;
        startn = 1;
        #100000;
        startn = 1;
        #100000;
        // Clicando em start
        stopn = 1;
        #500000;
        startn = 0;
        #100000;
        startn = 1;
        #300000000;


        // Teste 4

        key = 9'b000000000;
        door_closed = 1;
        stopn = 1;
        clearn = 1;
        startn = 1;

        // Digitando o 2
        #120000;
        key = 9'b000000100;
        #110000;
        key = 9'b000000000;

        // Digitando o 4
        #110000;
        key = 9'b000010000;
        #110000;
        key = 9'b000000000;

        // Digitando o 5
        #110000;
        key = 10'b0000100000;
        #110000;
        key = 9'b000000000;

        #110000;
        startn = 0;
        #100000;
        startn = 1;
        #3000000;
        // CLicando em limpar
        clearn = 0;
        #810000;
        startn = 1;
        #100000;
        startn = 1;
        #100000;
        // Clicando em start
        clearn = 1;
        #500000;
        startn = 0;
        #100000;
        startn = 1;
        #500000000;

        // Teste 5
        
        key = 9'b000000000;
        door_closed = 1;
        stopn = 1;
        clearn = 1;
        startn = 1;

        // Digitando o 1
        #120000;
        key = 9'b000000010;
        #110000;
        key = 9'b000000000;

        // Digitando o 7
        #110000;
        key = 9'b010000000;
        #110000;
        key = 9'b000000000;

        // Digitando o 5
        #110000;
        key = 10'b1000000000;
        #110000;
        key = 9'b000000000;

        #110000;
        startn = 0;
        #100000;
        startn = 1;
        #3000000;

        // 1418000 ms
        // 1556000 ms
        
    end
    
endmodule