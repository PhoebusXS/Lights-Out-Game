/*
   This file was generated automatically by the Mojo IDE version B1.3.5.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module board_updater_1 (
    input move,
    input [11:0] game,
    input [11:0] hint,
    input [143:0] mask,
    output reg [11:0] new_game,
    output reg [11:0] new_hint
  );
  
  
  
  reg [11:0] move_pos;
  
  wire [12-1:0] M_my_operators_ans;
  reg [12-1:0] M_my_operators_operand_one;
  reg [12-1:0] M_my_operators_operand_two;
  reg [6-1:0] M_my_operators_alufn;
  operators_7 my_operators (
    .operand_one(M_my_operators_operand_one),
    .operand_two(M_my_operators_operand_two),
    .alufn(M_my_operators_alufn),
    .ans(M_my_operators_ans)
  );
  
  always @* begin
    M_my_operators_alufn = 14'h277e;
    M_my_operators_operand_one = mask[(move)*12+11-:12];
    M_my_operators_operand_two = game;
    new_game = M_my_operators_ans;
    
    case (move)
      1'h0: begin
        move_pos = 37'h174876e800;
      end
      1'h1: begin
        move_pos = 34'h2540be400;
      end
      2'h2: begin
        move_pos = 30'h3b9aca00;
      end
      2'h3: begin
        move_pos = 27'h5f5e100;
      end
      3'h4: begin
        move_pos = 24'h989680;
      end
      3'h5: begin
        move_pos = 20'hf4240;
      end
      3'h6: begin
        move_pos = 17'h186a0;
      end
      3'h7: begin
        move_pos = 14'h2710;
      end
      4'h8: begin
        move_pos = 10'h3e8;
      end
      4'h9: begin
        move_pos = 7'h64;
      end
      4'ha: begin
        move_pos = 4'ha;
      end
      4'hb: begin
        move_pos = 1'h1;
      end
      default: begin
        move_pos = 1'h0;
      end
    endcase
    M_my_operators_operand_two = hint;
    new_hint = M_my_operators_ans;
  end
endmodule
