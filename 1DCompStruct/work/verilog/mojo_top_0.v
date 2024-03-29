/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module mojo_top_0 (
    input clk,
    input rst_n,
    output reg [7:0] led,
    input cclk,
    output reg spi_miso,
    input spi_ss,
    input spi_mosi,
    input spi_sck,
    output reg [3:0] spi_channel,
    input avr_tx,
    output reg avr_rx,
    input avr_rx_busy,
    output reg [23:0] io_led,
    output reg [7:0] io_seg,
    output reg [3:0] io_sel,
    input [4:0] io_button,
    input [23:0] io_dip,
    output reg row1,
    output reg row2,
    output reg row3,
    output reg row4,
    output reg row5,
    output reg row6,
    input player2leftBtn,
    input player2rightBtn,
    input player1leftBtn,
    input player1rightBtn,
    input startBtn
  );
  
  
  
  reg rst;
  
  reg player1left;
  
  reg player1right;
  
  reg player2left;
  
  reg player2right;
  
  wire [1-1:0] M_reset_cond_out;
  reg [1-1:0] M_reset_cond_in;
  reset_conditioner_1 reset_cond (
    .clk(clk),
    .in(M_reset_cond_in),
    .out(M_reset_cond_out)
  );
  wire [1-1:0] M_player1left_cond_out;
  reg [1-1:0] M_player1left_cond_in;
  button_conditioner_2 player1left_cond (
    .clk(clk),
    .in(M_player1left_cond_in),
    .out(M_player1left_cond_out)
  );
  wire [1-1:0] M_player1right_cond_out;
  reg [1-1:0] M_player1right_cond_in;
  button_conditioner_2 player1right_cond (
    .clk(clk),
    .in(M_player1right_cond_in),
    .out(M_player1right_cond_out)
  );
  wire [1-1:0] M_player2left_cond_out;
  reg [1-1:0] M_player2left_cond_in;
  button_conditioner_2 player2left_cond (
    .clk(clk),
    .in(M_player2left_cond_in),
    .out(M_player2left_cond_out)
  );
  wire [1-1:0] M_player2right_cond_out;
  reg [1-1:0] M_player2right_cond_in;
  button_conditioner_2 player2right_cond (
    .clk(clk),
    .in(M_player2right_cond_in),
    .out(M_player2right_cond_out)
  );
  wire [1-1:0] M_bigbtn_cond_out;
  reg [1-1:0] M_bigbtn_cond_in;
  button_conditioner_2 bigbtn_cond (
    .clk(clk),
    .in(M_bigbtn_cond_in),
    .out(M_bigbtn_cond_out)
  );
  wire [1-1:0] M_edge_out;
  reg [1-1:0] M_edge_in;
  edge_detector_7 L_edge (
    .clk(clk),
    .in(M_edge_in),
    .out(M_edge_out)
  );
  wire [1-1:0] M_edge1left_out;
  reg [1-1:0] M_edge1left_in;
  edge_detector_7 edge1left (
    .clk(clk),
    .in(M_edge1left_in),
    .out(M_edge1left_out)
  );
  wire [1-1:0] M_edge1right_out;
  reg [1-1:0] M_edge1right_in;
  edge_detector_7 edge1right (
    .clk(clk),
    .in(M_edge1right_in),
    .out(M_edge1right_out)
  );
  wire [1-1:0] M_edge2left_out;
  reg [1-1:0] M_edge2left_in;
  edge_detector_7 edge2left (
    .clk(clk),
    .in(M_edge2left_in),
    .out(M_edge2left_out)
  );
  wire [1-1:0] M_edge2right_out;
  reg [1-1:0] M_edge2right_in;
  edge_detector_7 edge2right (
    .clk(clk),
    .in(M_edge2right_in),
    .out(M_edge2right_out)
  );
  wire [4-1:0] M_display1_pixel;
  wire [1-1:0] M_display1_led;
  reg [96-1:0] M_display1_color;
  reg [1-1:0] M_display1_update;
  display_12 display1 (
    .clk(clk),
    .rst(rst),
    .color(M_display1_color),
    .update(M_display1_update),
    .pixel(M_display1_pixel),
    .led(M_display1_led)
  );
  wire [4-1:0] M_display2_pixel;
  wire [1-1:0] M_display2_led;
  reg [96-1:0] M_display2_color;
  reg [1-1:0] M_display2_update;
  display_12 display2 (
    .clk(clk),
    .rst(rst),
    .color(M_display2_color),
    .update(M_display2_update),
    .pixel(M_display2_pixel),
    .led(M_display2_led)
  );
  wire [4-1:0] M_display3_pixel;
  wire [1-1:0] M_display3_led;
  reg [96-1:0] M_display3_color;
  reg [1-1:0] M_display3_update;
  display_12 display3 (
    .clk(clk),
    .rst(rst),
    .color(M_display3_color),
    .update(M_display3_update),
    .pixel(M_display3_pixel),
    .led(M_display3_led)
  );
  wire [4-1:0] M_display4_pixel;
  wire [1-1:0] M_display4_led;
  reg [96-1:0] M_display4_color;
  reg [1-1:0] M_display4_update;
  display_12 display4 (
    .clk(clk),
    .rst(rst),
    .color(M_display4_color),
    .update(M_display4_update),
    .pixel(M_display4_pixel),
    .led(M_display4_led)
  );
  wire [4-1:0] M_display5_pixel;
  wire [1-1:0] M_display5_led;
  reg [96-1:0] M_display5_color;
  reg [1-1:0] M_display5_update;
  display_12 display5 (
    .clk(clk),
    .rst(rst),
    .color(M_display5_color),
    .update(M_display5_update),
    .pixel(M_display5_pixel),
    .led(M_display5_led)
  );
  wire [4-1:0] M_display6_pixel;
  wire [1-1:0] M_display6_led;
  reg [96-1:0] M_display6_color;
  reg [1-1:0] M_display6_update;
  display_12 display6 (
    .clk(clk),
    .rst(rst),
    .color(M_display6_color),
    .update(M_display6_update),
    .pixel(M_display6_pixel),
    .led(M_display6_led)
  );
  wire [96-1:0] M_gamestates_row1;
  wire [96-1:0] M_gamestates_row2;
  wire [96-1:0] M_gamestates_row3;
  wire [96-1:0] M_gamestates_row4;
  wire [96-1:0] M_gamestates_row5;
  wire [5-1:0] M_gamestates_currentState;
  wire [8-1:0] M_gamestates_ll1;
  wire [8-1:0] M_gamestates_ll2;
  wire [8-1:0] M_gamestates_out;
  wire [1-1:0] M_gamestates_fail;
  wire [4-1:0] M_gamestates_car1Pos;
  wire [4-1:0] M_gamestates_car2Pos;
  wire [96-1:0] M_gamestates_rowcar;
  wire [8-1:0] M_gamestates_debug;
  wire [16-1:0] M_gamestates_score_out;
  reg [1-1:0] M_gamestates_car1left;
  reg [1-1:0] M_gamestates_car1right;
  reg [1-1:0] M_gamestates_car2left;
  reg [1-1:0] M_gamestates_car2right;
  reg [1-1:0] M_gamestates_bigbtn;
  gamestates_18 gamestates (
    .clk(clk),
    .rst(rst),
    .car1left(M_gamestates_car1left),
    .car1right(M_gamestates_car1right),
    .car2left(M_gamestates_car2left),
    .car2right(M_gamestates_car2right),
    .bigbtn(M_gamestates_bigbtn),
    .row1(M_gamestates_row1),
    .row2(M_gamestates_row2),
    .row3(M_gamestates_row3),
    .row4(M_gamestates_row4),
    .row5(M_gamestates_row5),
    .currentState(M_gamestates_currentState),
    .ll1(M_gamestates_ll1),
    .ll2(M_gamestates_ll2),
    .out(M_gamestates_out),
    .fail(M_gamestates_fail),
    .car1Pos(M_gamestates_car1Pos),
    .car2Pos(M_gamestates_car2Pos),
    .rowcar(M_gamestates_rowcar),
    .debug(M_gamestates_debug),
    .score_out(M_gamestates_score_out)
  );
  
  wire [16-1:0] M_alu_c;
  reg [6-1:0] M_alu_alufn;
  reg [16-1:0] M_alu_a;
  reg [16-1:0] M_alu_b;
  alu_19 alu (
    .alufn(M_alu_alufn),
    .a(M_alu_a),
    .b(M_alu_b),
    .c(M_alu_c)
  );
  
  wire [8-1:0] M_bin_to_dec_digits;
  reg [7-1:0] M_bin_to_dec_value;
  bin_to_dec_20 bin_to_dec (
    .value(M_bin_to_dec_value),
    .digits(M_bin_to_dec_digits)
  );
  
  reg [7:0] result;
  
  always @* begin
    M_reset_cond_in = ~rst_n;
    rst = M_reset_cond_out;
    led = rst;
    spi_miso = 1'bz;
    spi_channel = 4'bzzzz;
    avr_rx = 1'bz;
    io_led = 24'h000000;
    io_seg = 8'hff;
    io_sel = 4'hf;
    M_player1left_cond_in = player1leftBtn;
    M_edge1left_in = M_player1left_cond_out;
    player1left = M_edge1left_out;
    M_player1right_cond_in = player1rightBtn;
    M_edge1right_in = M_player1right_cond_out;
    player1right = M_edge1right_out;
    M_player2left_cond_in = player2leftBtn;
    M_edge2left_in = M_player2left_cond_out;
    player2left = M_edge2left_out;
    M_player2right_cond_in = player2rightBtn;
    M_edge2right_in = M_player2right_cond_out;
    player2right = M_edge2right_out;
    M_gamestates_car1left = player1left;
    M_gamestates_car1right = player1right;
    M_gamestates_car2left = player2left;
    M_gamestates_car2right = player2right;
    M_bigbtn_cond_in = startBtn;
    M_edge_in = M_bigbtn_cond_out;
    M_gamestates_bigbtn = M_edge_out;
    M_display1_update = 1'h1;
    M_display2_update = 1'h1;
    M_display3_update = 1'h1;
    M_display4_update = 1'h1;
    M_display5_update = 1'h1;
    M_display6_update = 1'h1;
    M_display1_color = M_gamestates_row1;
    row1 = M_display1_led;
    M_display2_color = M_gamestates_row2;
    row2 = M_display2_led;
    M_display3_color = M_gamestates_row3;
    row3 = M_display3_led;
    M_display4_color = M_gamestates_row4;
    row4 = M_display4_led;
    M_display5_color = M_gamestates_row5;
    row5 = M_display5_led;
    M_display6_color = M_gamestates_rowcar;
    row6 = M_display6_led;
    io_led[16+7-:8] = M_gamestates_debug;
    M_alu_alufn = 6'h00;
    M_alu_a = 16'h0000;
    M_alu_b = 16'h0001;
    io_led[16+7-:8] = M_gamestates_currentState;
    io_led[8+7-:8] = M_gamestates_score_out;
    M_bin_to_dec_value = 8'h00;
    result = M_bin_to_dec_digits;
    io_led[0+7-:8] = {result[4+3-:4], result[0+3-:4]};
  end
endmodule
