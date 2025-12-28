`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.09.2025 17:36:51
// Design Name: 
// Module Name: FA
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


module FA(
    input a,b,cin,
    output s,c
    );
    
    wire f1,f2,f3;
    HA m1(.a(a),.b(b),.s(f1),.c(f2));
    HA m2(.a(f1),.b(cin),.s(s),.c(f3));
    or r1(c,f2,f3);
endmodule
