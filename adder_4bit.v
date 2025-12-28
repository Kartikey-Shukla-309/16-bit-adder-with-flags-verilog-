`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.09.2025 17:41:55
// Design Name: 
// Module Name: adder_4bit
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


module adder_4bit(
    input [3:0]A,B,
    input Cin,
    output [3:0]S,
    output C
    );
    
    wire b1,b2,b3;
    
    FA m1(.a(A[0]),.b(B[0]),.cin(Cin),.s(S[0]),.c(b1));
    FA m2(.a(A[1]),.b(B[1]),.cin(b1),.s(S[1]),.c(b2));
    FA m3(.a(A[2]),.b(B[2]),.cin(b2),.s(S[2]),.c(b3));
    FA m4(.a(A[3]),.b(B[3]),.cin(b3),.s(S[3]),.c(C));
endmodule
