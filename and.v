module and(a,b,c);
  input a,b;
  output c;
  assign c= a&b ;
endmodule

module or(a,b,c);
  input a,b;
  output c;
  assign c= a|b ;
endmodule

module nand(a,b,c);
  input a,b;
  output c;
  assign c= ~(a&b) ;
endmodule

module nor(a,b,c);
  input a,b;
  output c;
  assign c= ~(a|b) ;
endmodule



module xor(a,b,d,f,c);
  input a,b;
  output c;
  reg d,f;
  nand a1(a,b,f);
  or a1(a,b,d);
  and a1(f,d,c);
endmodule
