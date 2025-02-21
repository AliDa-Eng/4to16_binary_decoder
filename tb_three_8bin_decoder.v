`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/20/2025 05:13:24 PM
// Design Name: 
// Module Name: tb_three_8bin_decoder
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


module tb_three_8bin_decoder(

    );
    //signal declaration 
    reg test_en; 
    reg [2:0] test_a; 
    wire [7:0] test_led; 
    integer i;
   // integer j;
    //instaniate unit under test 
    three_8bin_decoder uut(.en(test_en), .a(test_a), .led(test_led));
    
    //generate test values and monitor variable change in tcl console 
    initial 
    begin
        $monitor("Time = %0d|test_en = %b    |test_a = %b     |test_led = %b     |",$time, test_en, test_a, test_led);
        #20;
        for (i = 0; i < 8; i = i + 1)
        begin
            test_en = 1; 
            test_a = i;
            #20;
        
        end  
        test_en = 0;
        #10; 
        $finish;
        
    
    
    
    
    
    end 
    
endmodule
