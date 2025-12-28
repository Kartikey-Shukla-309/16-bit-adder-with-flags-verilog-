`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.09.2025 18:39:54
// Design Name: 
// Module Name: test_bench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module test_bench();
    reg [15:0]a,b;
    reg cin;
    wire [15:0]y;
    wire s,z,c,p,o;
    
    adder_16bit m(.Cin(cin),.A(a),.B(b),.Y(y),.sign(s),.zero(z),.carry(c),.parity(p),.overflow(o));
    
    initial begin
        cin = 1'b0;
        #10 a = 16'h4000; b = 16'h4000;     // Sign flag
        #10 a = 16'h1234; b = 16'hEDCC;     // Zero flag
        #10 a = 16'hFFFF; b = 16'h0001;     // Carry flag
        #10 a = 16'h0003; b = 16'h0000;     // Parity flag
        #10 a = 16'h7FFF; b = 16'h0001;     // Overflow flag
    end
endmodule
