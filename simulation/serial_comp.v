module serial_comp(L, E, G, a, b, clock, reset);
  input a, b, reset, clock; 
  output L, E, G;
  reg L, E, G;
  
  always @(posedge reset or posedge clock)
  if(reset)
    begin
    L = 1'b0;
    G = 1'b0;
    E = 1'b1;
  end
  else
    begin
    L = a^b ? a < b : L;
    E = a^b ? 0 : E;
    G = a^b ? a > b : G;
  end
  
endmodule
