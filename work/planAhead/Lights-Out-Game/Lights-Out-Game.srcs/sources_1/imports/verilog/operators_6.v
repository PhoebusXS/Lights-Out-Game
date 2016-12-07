/*
   This file was generated automatically by the Mojo IDE version B1.3.5.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module operators_6 (
    input [11:0] operand_one,
    input [11:0] operand_two,
    input [5:0] alufn,
    output reg [11:0] ans
  );
  
  
  
  wire [12-1:0] M_my_adder_ans;
  wire [1-1:0] M_my_adder_z;
  wire [1-1:0] M_my_adder_v;
  wire [1-1:0] M_my_adder_n;
  wire [1-1:0] M_my_adder_cmpz;
  wire [1-1:0] M_my_adder_cmpv;
  wire [1-1:0] M_my_adder_cmpn;
  reg [6-1:0] M_my_adder_alufn;
  reg [12-1:0] M_my_adder_a;
  reg [12-1:0] M_my_adder_b;
  op_adder_9 my_adder (
    .alufn(M_my_adder_alufn),
    .a(M_my_adder_a),
    .b(M_my_adder_b),
    .ans(M_my_adder_ans),
    .z(M_my_adder_z),
    .v(M_my_adder_v),
    .n(M_my_adder_n),
    .cmpz(M_my_adder_cmpz),
    .cmpv(M_my_adder_cmpv),
    .cmpn(M_my_adder_cmpn)
  );
  
  wire [12-1:0] M_my_comparer_ans;
  reg [1-1:0] M_my_comparer_z;
  reg [1-1:0] M_my_comparer_v;
  reg [1-1:0] M_my_comparer_n;
  reg [6-1:0] M_my_comparer_alufn;
  op_comparer_10 my_comparer (
    .z(M_my_comparer_z),
    .v(M_my_comparer_v),
    .n(M_my_comparer_n),
    .alufn(M_my_comparer_alufn),
    .ans(M_my_comparer_ans)
  );
  
  wire [12-1:0] M_my_logic_ans;
  reg [6-1:0] M_my_logic_alufn;
  reg [12-1:0] M_my_logic_a;
  reg [12-1:0] M_my_logic_b;
  op_logic_11 my_logic (
    .alufn(M_my_logic_alufn),
    .a(M_my_logic_a),
    .b(M_my_logic_b),
    .ans(M_my_logic_ans)
  );
  
  wire [12-1:0] M_my_shifter_ans;
  reg [12-1:0] M_my_shifter_a;
  reg [12-1:0] M_my_shifter_b;
  reg [6-1:0] M_my_shifter_alufn;
  op_shifter_12 my_shifter (
    .a(M_my_shifter_a),
    .b(M_my_shifter_b),
    .alufn(M_my_shifter_alufn),
    .ans(M_my_shifter_ans)
  );
  
  always @* begin
    M_my_adder_a = operand_one;
    M_my_adder_b = operand_two;
    M_my_adder_alufn = alufn[0+5-:6];
    M_my_logic_a = operand_one;
    M_my_logic_b = operand_two;
    M_my_logic_alufn = alufn[0+5-:6];
    M_my_shifter_a = operand_one;
    M_my_shifter_b = operand_two;
    M_my_shifter_alufn = alufn[0+5-:6];
    M_my_comparer_z = M_my_adder_cmpz;
    M_my_comparer_v = M_my_adder_cmpv;
    M_my_comparer_n = M_my_adder_cmpn;
    M_my_comparer_alufn = alufn[0+5-:6];
    
    case (alufn[4+1-:2])
      2'h0: begin
        ans = M_my_adder_ans;
      end
      2'h1: begin
        ans = M_my_logic_ans;
      end
      2'h2: begin
        ans = M_my_shifter_ans;
      end
      2'h3: begin
        ans = M_my_comparer_ans;
      end
      default: begin
        ans = 12'h000;
      end
    endcase
  end
endmodule
