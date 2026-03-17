`timescale 1ns/1ps
module all_basic_gates_tb;

    reg  a, b;
    wire y_and, y_or, y_not, y_nand, y_nor;

    // instantiate all 5 — each gets its own output wire
    and_gate  u1 (.a(a), .b(b), .y(y_and));
    or_gate   u2 (.a(a), .b(b), .y(y_or));
    not_gate  u3 (.a(a),        .y(y_not));
    nand_gate u4 (.a(a), .b(b), .y(y_nand));
    nor_gate  u5 (.a(a), .b(b), .y(y_nor));

    initial begin
        $dumpfile("sim/all_basic_gates.vcd");
        $dumpvars(0, all_basic_gates_tb);

        a=0; b=0; #10;
        a=0; b=1; #10;
        a=1; b=0; #10;
        a=1; b=1; #10;

        $finish;
    end

    initial begin
        $monitor("T=%0t | a=%b b=%b | AND=%b OR=%b NOT=%b NAND=%b NOR=%b",
                  $time, a, b, y_and, y_or, y_not, y_nand, y_nor);
    end

endmodule