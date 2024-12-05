module alutest;
  reg [15:0] X,Y;
  wire [15:0] Z; wire S,PR,ZR,CY,V;
  ALU DUT(X,Y,Z,CY,S,PR,ZR,V);
  initial
    begin 
      $dumpfile("ALU.vcd"); $dumpvars (0,alutest);
      $monitor($time,"X=%h ,Y=%h , Z=%h ,CY=%b,S=%b,PR=%b,ZR=%b,V=%b",X,Y,Z,CY,S,PR,ZR,V);
      #5 X=16'h8fff; Y=16'h8000;
      #5 $finish;
    end
endmodule
