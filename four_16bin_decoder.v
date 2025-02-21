`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/20/2025 11:49:05 PM
// Design Name: 
// Module Name: four_16bin_decoder
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


module four_16bin_decoder(
    input en,
    input [3:0] a,
    output [15:0] led
    );
    wire en_lsb_low, en_lsb_high, en_msb_low, en_msb_high;
    wire [3:0] led_lsb_low, led_lsb_high, led_msb_low, led_msb_high;
    
    assign en_lsb_low = ~a[3] & ~a[2];
    assign en_lsb_high = ~a[3] & a[2];
    assign en_msb_low = a[3] & ~a[2];
    assign en_msb_high = a[3] & a[2];
    
    two_4bin_decoder instan1(.en(en_lsb_low), .a(a[1:0]), .led(led_lsb_low));
    two_4bin_decoder instan2(.en(en_lsb_high), .a(a[1:0]), .led(led_lsb_high));
    two_4bin_decoder instan3(.en(en_msb_low), .a(a[1:0]), .led(led_msb_low));
    two_4bin_decoder instan4(.en(en_msb_high), .a(a[1:0]), .led(led_msb_high));
    
    assign {led[15:12], led[11:8], led[7:4], led[3:0]} = (en) ? {led_msb_high, led_msb_low, led_lsb_high, led_lsb_low}:16'b0000000000000000;
endmodule
