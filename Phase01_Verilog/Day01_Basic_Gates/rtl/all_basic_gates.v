module and_gate (a,b,y );
    input a;
    input b;
    output y;
    
    assign y = a & b;
endmodule
module nand_gate (a,b,y );
    input a;
    input b;
    output y;
    
    assign y = ~(a & b);
endmodule
module nor_gate (a,b,y );
    input a;
    input b;
    output y;
    
    assign y = ~(a||b);
endmodule
module not_gate (a,y );
    input a;
    output y;
    
    assign y = ~a;
endmodule
module or_gate (a,b,y );
    input a;
    input b;
    output y;
    
    assign y = a || b;
endmodule