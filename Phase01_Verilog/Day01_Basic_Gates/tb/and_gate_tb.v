`timescale 1ns/1ps

module and_gate_tb;

    reg  a, b;       // inputs are reg in TB
    wire y;          // output is wire

    // Instantiate DUT
    and_gate uut (
        .a(a),
        .b(b),
        .y(y)
    );

    initial begin
        $dumpfile("sim/and_gate.vcd");
        $dumpvars(0, and_gate_tb);
        
        // Apply all 4 combinations manually
        a=0; b=0; #10;
        a=0; b=1; #10;
        a=1; b=0; #10;
        a=1; b=1; #10;
        
        $finish;
    end

    initial begin
        $monitor("Time=%0t | a=%b b=%b | y=%b", $time, a, b, y);
    end

endmodule