// Magnetron control:
module control (mag_on, startn, stopn, clearn, door_closed, timer_done);

    // entradas:
    input wire startn , stopn , clearn, door_closed, timer_done;

    // output:
    output wire mag_on;

    wire rS, rR;
    wire rQ;

    // startn -> low (active, push button) and door_closed -> high (when door is closed)
    assign rS = (!startn  && door_closed) ? 1 : 0;

    // stopn -> low (active, push button), timer_done -> 1 or True (when it finished) and clearn -> low (active, push button)
    assign rR = (!stopn || timer_done || !door_closed || !clearn) ? 1 : 0;

    // Latch SR instance
    latchsr LSR_ON(.Q(rQ), .S(rS), .R(rR)); 

    // Obs.: HIGH output used to apply 120 VAC to magnetron circuit
    assign mag_on = rQ;  
    
endmodule