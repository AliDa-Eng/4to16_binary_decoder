`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/20/2025 04:00:47 PM
// Design Name: 
// Module Name: two_4bin_decoder
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


module two_4bin_decoder(
    input en,
    input [1:0] a,
    output [3:0] led
    );
    
    assign led[0] = en & ~a[1] & ~a[0];
    assign led[1] = en & ~a[1] & a[0];
    assign led[2] = en & a[1] & ~a[0];
    assign led[3] = en & a[1] & a[0];
endmodule
