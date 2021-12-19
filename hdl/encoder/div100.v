module div100 (
    input wire clk,
    output wire clk_div
);

    reg [6:0] cnt = 0;
    reg is10 = 0;
    assign clk_div = is10;

    always@(posedge clk) begin
        cnt <= cnt + 1;
        if (cnt == 7'd99) begin
            is10 <= 1;
            cnt <= 0;
        end
        else begin
            is10 <= 0;
        end
    end
    
endmodule