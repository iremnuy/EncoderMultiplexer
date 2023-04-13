`timescale 1ns / 1ns

module encoder(y, x);

  output reg [2:0] y;
  input [6:0] x;

  always @(*) begin
    y = x[6] + x[5] + x[4] + x[3] + x[2] + x[1] + x[0];
  end
  
endmodule


module mux(z, y, s);

  output reg z;
  input [2:0] y;
  input [1:0] s;

  always @(*) begin
    case(s)
      2'b00: z = (y == 3'b000) ? 1 : 0;
      2'b01: z = (y == 3'b001) ? 1 : 0;
      2'b10: z = (y == 3'b010) ? 1 : 0;
      2'b11: z = (y == 3'b011) ? 1 : 0;
    endcase
  end
  
endmodule
