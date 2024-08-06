//Describe behavior in procedure blocks
//this is usually "always" block
//this is normal way to implement sequential logic
//We can save the value in variableswith dataflow modeling

module mux_behavior(
  input a,b,
  input A,B,C,D
);

  reg Q;

  always @ * begin
    case({b,a})
      'b00 : Q=A;
      'b01 : Q=B;
      'b10 : Q=C;
      'B11 : Q=D;
      default : Q=0;
    endcase
  end
endmodule
