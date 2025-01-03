module mux2_1(input [3:0]i0,
              input [3:0]i1,
              input s,output reg [3:0]y);
  
  always @(*) begin
    
    case (s) 
      1'b0: y = i0;
      1'b1: y = i1;
    endcase
    
  end
endmodule

