module pencoder (D, all_off enablen, keypad);

    input wire enablen;
    input wire [9:0] keypad;

    output wire [3:0] D;
    output wire all_off;

    // numeric keypad output:
    assign D = (keypad & 512) ? 4'd9 :
            (keypad & 256) ? 4'd8 :
            (keypad & 128) ? 4'd7 :
            (keypad & 64)  ? 4'd6 :
            (keypad & 32)  ? 4'd5 :
            (keypad & 16)  ? 4'd4 :
            (keypad & 8)   ? 4'd3 :
            (keypad & 4)   ? 4'd2 :
            (keypad & 2)   ? 4'd1 : 
            (keypad & 1)   ? 4'd0 : 4'd0;
        
    assign all_off = (keypad == 10'b000000000);
    
endmodule