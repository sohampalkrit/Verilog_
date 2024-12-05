module example
       (input A, B, C, D, E, F, 
        output Y);
  
  wire t1, t2, t3, notB;
  
  not G0(notB, B);           // Invert signal B
  nand #1 G1(t1, A, B);      // NAND gate
  and  #2 G2(t2, C, notB, D); // AND gate with inverted B
  nor  #1 G3(t3, E, F);      // NOR gate
  nand #1 G4(Y, t1, t2, t3);  // NAND gate to produce Y
endmodule
