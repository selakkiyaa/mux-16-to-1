module mux16_1(input [3:0]i0,
               input [3:0]i1,
               input [3:0]i2,
               input [3:0]i3,
               input [3:0]i4,
               input [3:0]i5,
               input [3:0]i6,
               input [3:0]i7,
               input [3:0]i8,
               input [3:0]i9,
               input [3:0]i10,
               input [3:0]i11,
               input [3:0]i12,
               input [3:0]i13,
               input [3:0]i14,
               input [3:0]i15,
               input [2:0]s1,
               input s0,
               output [3:0]y);
  wire [3:0]y1;
  wire [3:0]y2;
  
  mux8_1 m1(i0,i1,i2,i3,i4,i5,i6,i7,s1,y1);
  mux8_1 m2(i8,i9,i10,i11,i12,i13,i14,i15,s1,y2);
  mux2_1 m3(y1,y2,s0,y);
  
endmodule
           
