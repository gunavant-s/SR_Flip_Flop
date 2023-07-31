`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Gunavant
// 
// Create Date: 31.07.2023 06:38:56
// Design Name: 
// Module Name: sr_ff
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


module sr_ff(input clk,
             input s,
             input r,
             output reg q,
             output qb);
        
        assign qb = ~q;
        
        always @(posedge clk) begin
            case({s, r})
                2'b00 : q <= q;
                2'b01 : q <= 2'b0;
                2'b10 : q <= 2'b01;
                2'b11 : q <= 1'bX;                            
            endcase
         end
         
endmodule
