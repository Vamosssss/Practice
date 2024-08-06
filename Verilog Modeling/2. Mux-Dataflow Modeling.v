//assign statement is used with operators which is more effective to describe than gates
//Between assign statements, there if sni sequence but dependency.
//We can know how dataflow in this modeling (which varaibles follow which operation).

module mux_dataflow(
  input a,b,
  input A,B,C,D,
  output Q
);

  wire sel_0, sel_1, sel_2, sel_3;

  assign sel_0 = ~a & ~b;
  assign sel_1 = a & ~b;
  assign sel_2 = ~a & b;
  assign sel_3 = a & b;
  
  // assign Q = (sel_0 & A)|(sel_1 & B)|(sel_2 & C)|(sel_3 & D);

  assign Q = sel_0?A:
             sel_1?B:
             sel_2?C:
             sel_3?D:0;

  /*assign Q = (~a & ~b)?A:
               (a & ~b)?B:
               (~a & b)?C:
               (a & b)?D:0; */
endmodule


               

               
              
  
  
