module test_serial_comp();
  reg clock;
  reg b, a;
  reg reset;
  wire L, E, G;
  
  serial_comp sc(L, E, G, a, b, clock, reset);
  
  always
  #5 clock = ~clock;
  
  initial
  begin
    clock = 1'b1;
    a = 1'b0;
    b = 1'b0;
    reset = 1'b0;
    #2
    reset = 1'b1;
    #1
    reset = 1'b0;
    #10
    a = 1'b1;
    #10
    b = 1'b1;
    #10
    a = 1'b0;
    b = 1'b1;
    #4
    $stop;
    
  end 
endmodule