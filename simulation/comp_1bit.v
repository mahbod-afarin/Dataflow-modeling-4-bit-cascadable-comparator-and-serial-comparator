module comp_1bit(L, E, G, a, b, L_in, E_in, G_in);
  input a, b, L_in, E_in, G_in;
  output L, E, G;
  assign abxor = a ^ b;
  assign L = abxor ? a < b : L_in;
  assign E = abxor ? 0 : E_in;
  assign G = abxor ? a > b : G_in;
endmodule