module encoder (D, pgt_1Hz, loadn, key, clk, enablen);

    // inputs:
    input wire [9:0] key;
    input wire clk;
    input wire enablen;

    // outputs:
    output wire [3:0] D;
    output wire pgt_1Hz;
    output wire loadn;


    wire int_clr, mux_a, mux_b;

    // instances: 
    pencoder penc(.keypad(key), .enablen(enablen), .D(D), .all_off(int_clr));
    debouncer dbc(.clk(clk), .clear(int_clr), .out(mux_a));
    div100 divider(.clk(clk), .clk_div(mux_b));

    // 2 to 1 multiplexer instance:
    mux2to1 mux(.a(mux_a), .b(mux_b), .sel(enablen), .out(pgt_1Hz));

    assign loadn = int_clr;
    
endmodule