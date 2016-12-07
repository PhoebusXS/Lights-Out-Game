/*
   This file was generated automatically by the Mojo IDE version B1.3.5.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module led_matrix_frame_7 (
    input x,
    input y,
    input yellow,
    output reg [11:0] pina,
    output reg [11:0] pinb
  );
  
  
  
  always @* begin
    pina = 12'hdb6;
    pinb = 12'h6db;
    if (x == 1'h0) begin
      
    end else begin
      if (x - (x / 2'h2) * 2'h2 == 1'h1) begin
        pina[((x + 1'h1) * 2'h3 / 2'h2 - 1'h1)*1+0-:1] = 1'h1;
      end else begin
        pinb[(x * 2'h3 / 2'h2 - 2'h3)*1+0-:1] = 1'h1;
      end
    end
    if (y == 1'h0) begin
      
    end else begin
      if (y - (y / 2'h2) * 2'h2 == 1'h1) begin
        pina[((y + 1'h1) * 2'h3 / 2'h2 + yellow - 2'h3)*1+0-:1] = 1'h0;
      end else begin
        pinb[(y * 2'h3 / 2'h2 - yellow - 1'h1)*1+0-:1] = 1'h0;
      end
    end
  end
endmodule
