module comp_6bit(L, E, G, a, b);
  input [5:0] a, b;
  output L, E, G;
  wire [5:0] l, e, g;
  assign l[0] = 1'b0;
  assign g[0] = 1'b0;
  assign e[0] = 1'b1;
  comp_1bit u[5:0]({L, l[5:1]}, {E, e[5:1]}, {G, g[5:1]}, a, b, l, e, g);
endmodule
