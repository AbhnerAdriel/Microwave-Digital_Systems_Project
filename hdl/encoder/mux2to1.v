module mux2to1 (out, sel, a, b);

    input wire sel, a, b;

    output wire out;

    assign out = (sel == 0 ? a : b);
    
endmodule