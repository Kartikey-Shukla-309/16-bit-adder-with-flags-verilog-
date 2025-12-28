`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.09.2025 17:21:16
// Design Name: 
// Module Name: adder_16bit
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


module adder_16bit(
    input Cin,
    input [15:0]A,B,
    output [15:0]Y,
    output sign,zero,carry,parity,overflow
    );
    
    wire w1,w2,w3;
    
    adder_4bit m1(.A(A[3:0]),.B(B[3:0]),.Cin(Cin),.S(Y[3:0]),.C(w1));
    adder_4bit m2(.A(A[7:4]),.B(B[7:4]),.Cin(w1),.S(Y[7:4]),.C(w2));
    adder_4bit m3(.A(A[11:8]),.B(B[11:8]),.Cin(w2),.S(Y[11:8]),.C(w3));
    adder_4bit m4(.A(A[15:12]),.B(B[15:12]),.Cin(w3),.S(Y[15:12]),.C(carry));
    
    assign sign = Y[15];
    assign zero = ~|Y;
    assign parity = ^Y;
    assign overflow = (A[15]&B[15]&~Y[15])|(~A[15]&~B[15]&Y[15]);
endmodule