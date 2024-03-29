/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module car_26 (
    input clk,
    input rst,
    input left,
    input right,
    input reset,
    input [3:0] position,
    output reg [3:0] currentPosition
  );
  
  
  
  reg [3:0] M_carposition_d, M_carposition_q = 1'h0;
  
  always @* begin
    M_carposition_d = M_carposition_q;
    
    if (reset == 1'h1) begin
      M_carposition_d = 4'h3;
    end
    if (M_carposition_q == 4'h0) begin
      M_carposition_d = position;
    end
    if (M_carposition_q == 4'hc && right) begin
      M_carposition_d = 4'h3;
    end
    if (left && M_carposition_q == 4'h3) begin
      M_carposition_d = 4'hc;
    end
    currentPosition = M_carposition_q;
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_carposition_q <= 1'h0;
    end else begin
      M_carposition_q <= M_carposition_d;
    end
  end
  
endmodule
