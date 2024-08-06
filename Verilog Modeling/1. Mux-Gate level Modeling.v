![image](https://github.com/user-attachments/assets/2a46f707-02e1-4ef1-b8e3-90d6e152ec50)

//Verilog can provide gate primitive cell which can be instantiated.
//Describe each gate with each instance including connection.

module mux_gatelevel(
  input a,b,
  input A,B,C,D,
  output Q
);

  wire a_not, b_not,
  wire A_pick, B_pick, C_pick, D_pick

  not(a_not,a);
  not(b_not,b);
  
  and(A_pick,a_not,b_not,A);
  and(B_pick,a,B_not,B);
  and(C_pick,a_not,b,C);
  and(D_pick, a, b, D);

  or(Q,A_pick,B_pick,C_pick,D_pick);
  
endmodule
