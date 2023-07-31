`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Gunavant
// 
// Create Date: 31.07.2023 06:52:27
// Design Name: 
// Module Name: tb_sr_ff
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


module tb_sr_ff;
    reg clk;
    reg s;
    reg r;
    wire q;
    wire q_bar;
    
    sr_ff DUT(.clk(clk),
              .s(s),
              .r(r),
              .q(q),
              .qb(q_bar)
              );
              
    initial begin 
        clk = 0;
        s = 0;
        r = 0;
        #10;
        s = 0;
        r = 1;
        #10;
        s = 1;
        r = 0;
        #10
        s = 1;
        r = 1;
        #10 $stop;
    end
    
    always #5 clk = ~clk;
    
endmodule
