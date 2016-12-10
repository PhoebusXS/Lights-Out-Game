/*
   This file was generated automatically by the Mojo IDE version B1.3.5.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

/*
   Parameters:
     SIZE = 6
     DIV = 12
     TOP = 63
     UP = 1
*/
module counter_13 (
    input clk,
    input rst,
    output reg [5:0] value
  );
  
  localparam SIZE = 3'h6;
  localparam DIV = 4'hc;
  localparam TOP = 6'h3f;
  localparam UP = 1'h1;
  
  
  reg [17:0] M_ctr_d, M_ctr_q = 1'h0;
  
  localparam MAX_VALUE = 18'h3ffff;
  
  always @* begin
    M_ctr_d = M_ctr_q;
    
    value = M_ctr_q[12+5-:6];
    if (1'h1) begin
      M_ctr_d = M_ctr_q + 1'h1;
      if (1'h1 && M_ctr_q == 18'h3ffff) begin
        M_ctr_d = 1'h0;
      end
    end else begin
      M_ctr_d = M_ctr_q - 1'h1;
      if (1'h1 && M_ctr_q == 1'h0) begin
        M_ctr_d = 18'h3ffff;
      end
    end
  end
  
  always @(posedge clk) begin
    if (rst == 1'b1) begin
      M_ctr_q <= 1'h0;
    end else begin
      M_ctr_q <= M_ctr_d;
    end
  end
  
endmodule