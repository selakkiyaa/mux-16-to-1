module mux8_1(input [3:0]i0,
              input [3:0]i1,
              input [3:0]i2,
              input [3:0]i3,
              input [3:0]i4,
              input [3:0]i5,
              input [3:0]i6,
              input [3:0]i7,
              input [2:0]sel,
              output [3:0]y);
  
  assign y = sel[2] ? (sel[1] ? (sel[0] ? i7 : i6) : (sel[0] ? i5 : i4)) : (sel[1] ? (sel[0] ? i3 : i2) : (sel[0] ? i1 : i0));
endmodule 
