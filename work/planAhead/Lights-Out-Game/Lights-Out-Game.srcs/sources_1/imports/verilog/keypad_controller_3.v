/*
   This file was generated automatically by the Mojo IDE version B1.3.5.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module keypad_controller_3 (
    input [1:0] ind,
    input [3:0] pin,
    output reg [3:0] pinr,
    output reg [7:0] move,
    output reg restart_game,
    output reg show_hint,
    output reg show_smile
  );
  
  
  
  wire [3-1:0] M_my_frame_x;
  wire [3-1:0] M_my_frame_y;
  wire [8-1:0] M_my_frame_keynum;
  reg [8-1:0] M_my_frame_pin;
  keypad_frame_16 my_frame (
    .pin(M_my_frame_pin),
    .x(M_my_frame_x),
    .y(M_my_frame_y),
    .keynum(M_my_frame_keynum)
  );
  
  reg [3:0] pinout;
  
  reg [7:0] keynum;
  
  always @* begin
    move = 6'h2a;
    restart_game = 1'h0;
    show_hint = 1'h0;
    show_smile = 1'h0;
    M_my_frame_pin[4+3-:4] = pin[0+3-:4];
    
    case (ind)
      1'h0: begin
        pinout = 4'h8;
      end
      1'h1: begin
        pinout = 4'h4;
      end
      2'h2: begin
        pinout = 4'h2;
      end
      2'h3: begin
        pinout = 4'h1;
      end
      default: begin
        pinout = 4'h0;
      end
    endcase
    pinr = pinout;
    M_my_frame_pin[0+3-:4] = pinout;
    keynum = M_my_frame_keynum;
    if (keynum <= 4'hb) begin
      move = M_my_frame_keynum;
    end else begin
      if (keynum == 4'hc) begin
        restart_game = 1'h1;
      end else begin
        if (keynum == 4'hf) begin
          show_hint = 1'h1;
        end else begin
          if (keynum == 4'hd) begin
            show_smile = 1'h1;
          end else begin
            move = 6'h2a;
          end
        end
      end
    end
  end
endmodule
