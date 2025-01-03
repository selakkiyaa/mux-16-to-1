
module mux16_1_tb;
  reg [3:0]i0;
  reg [3:0]i1;
  reg [3:0]i2;
  reg [3:0]i3;
  reg [3:0]i4;
  reg [3:0]i5;
  reg [3:0]i6;
  reg [3:0]i7;
  reg [3:0]i8;
  reg [3:0]i9;
  reg [3:0]i10;
  reg [3:0]i11;
  reg [3:0]i12;
  reg [3:0]i13;
  reg [3:0]i14;
  reg [3:0]i15;
  reg [2:0]s1;
  reg s0;
  wire [3:0]y;
  integer i;
  
  mux16_1 dut(i0,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,i13,i14,i15,s1,s0,y);
  
  initial begin
    
    s1 = 0;
    s0 = 0;
    i0 = 4'b0000;
    i1 = 4'b0001;
    i2 = 4'b0010;
    i3 = 4'b0011;
    i4 = 4'b0100;
    i5 = 4'b0101;
    i6 = 4'b0110;
    i7 = 4'b0111;
    i8 = 4'b1000;
    i9 = 4'b1001;
    i10 = 4'b1010;
    i11 = 4'b1011;
    i12 = 4'b1100;
    i13 = 4'b1101;
    i14 = 4'b1110;
    i15 = 4'b1111;
    
    for(i=0;i<16;i=i+1) begin
      {s1,s0}=i;
      #10;
      $display("%b%b | %d",s1,s0,y);
    end
    $finish;
  end
endmodule