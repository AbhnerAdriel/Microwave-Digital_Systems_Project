module counterMod10 (data_out, tc, zero, loadn, clock, clear, enable, data_in);

    // inputs:
    input wire loadn, clock, clear, enable;
    input wire [3:0] data_in;

    // outputs:
    output wire [3:0] data_out;
    output wire tc;
    output wire zero;
    

    reg [3: 0] cur_state;
    assign data_out = cur_state; 
    
    assign zero = (cur_state == 0) ? 1 : 0;
    assign tc = ((cur_state == 0) & enable) ? 1 : 0;

    always @(posedge clock)
    begin
        if (enable) begin
            if (cur_state == 4'b0000) begin
                cur_state <= 4'd9;
            end
            else begin
                cur_state <= cur_state - 1;
            end
        end
        else begin
            if (!loadn) begin
                cur_state <= data_in;
            end
        end
    end

    always @(negedge clear) begin
        if (!clear) begin
            cur_state <= 4'b0000;
        end
    end

endmodule