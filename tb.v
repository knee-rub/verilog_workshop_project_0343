`timescale 1ns/1ns
`include "design.v"

module gcd_tb;
    reg clk = 0;
    reg reset;
    reg [3:0] x_in;
    reg [3:0] y_in;
    wire [3:0] gcd;
    wire valid;

    gcd dut (clk, reset, x_in, y_in, gcd, valid);
    
    always begin
        clk = ~clk;
        #10;
    end

    initial begin
        x_in = 10;
        y_in = 2;
        reset = 1;
        #2 reset = 0;
        #200;
        $finish;
    end

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, gcd_tb);
    end

endmodule
