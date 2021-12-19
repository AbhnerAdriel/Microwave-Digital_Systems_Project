module timer (sec_ones, sec_tens, mins, zero, data_in, loadn, clock, clear, enable);

    // inputs:
    input wire [3:0] data_in;
    input wire loadn, clock, clear, enable;

    // outputs:
    output wire [3:0] sec_ones, sec_tens, mins;
    output wire zero;

    wire en_tens_sec, en_min, en_sec;
    wire zero_sec, zero_ten_sec, zero_min;

    // Instance of mod10 and mod 6 contactors:
    counterMod10 ones_secs(.loadn(loadn), .clock(clock), .clear(clear), .enable(enable), .data_in(data_in), .data_out(sec_ones), .tc(en_tens_sec), .zero(zero_sec));
    counterMod6 tens_secs (.loadn(loadn), .clock(clock), .clear(clear), .enable(en_tens_sec), .data_in(sec_ones), .data_out(sec_tens), .tc(en_min), .zero(zero_ten_sec));

    counterMod10 min(.loadn(loadn), .clock(clock), .clear(clear), .enable(en_min), .data_in(sec_tens), .data_out(mins), .tc(en_sec), .zero(zero_min));
    // ---------------------------------------

    and(zero, zero_sec, zero_ten_sec, zero_min);

    assign zero = zero_sec & zero_ten_sec && zero_min;

endmodule
