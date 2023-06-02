`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/30/2023 03:14:28 PM
// Design Name: 
// Module Name: register
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

module register(
          input logic [3:0] A1,
          input logic [3:0] A2,
          input logic [3:0] A3,
		  input logic [31:0] WD3,
		  input logic WE3,
		  input logic clk,
		  output logic [31:0] RD1, RD2 );
		
	logic [31:0] rf [0:15];
	
	initial begin
        // Kay?tlara atama yapma
        rf[0] = 32'h00000000;
        rf[1] = 32'h00000001;
        rf[2] = 32'h00000002;
        rf[3] = 32'h00000003;
        rf[4] = 32'h00000004;
        rf[5] = 32'h00000005;
        rf[6] = 32'h00000006;
        rf[7] = 32'h00000007;
        rf[8] = 32'h00000008;
        rf[9] = 32'h00000009;
        end

	always_ff @(posedge clk) begin
           
         begin
            if(WE3 == 1) begin
                rf[A3] <= WD3;
            end
        end
    end
		
	always_comb   begin
        RD1 = rf[A1];
        RD2 = rf[A2];
	end
 
endmodule