`timescale 1ns/1ps

module not_gate_tb;

    reg  a;       // inputs are reg in TB
    wire y;          // output is wire

    // Instantiate DUT
    not_gate uut (
        .a(a),
        .y(y)
    );

    initial begin
        $dumpfile("sim/not_gate.vcd");
        $dumpvars(0, not_gate_tb);
        
        // Apply all 2 combinations manually
        a=0; #10;
        a=1; #10;
        
        $finish;
    end

    initial begin
        $monitor("Time=%0t | a=%b | y=%b", $time, a, y);
    end

endmodule