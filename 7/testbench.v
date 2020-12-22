Testbench: 


`timescale 1ns / 1ps

module tb;
      reg [1:0] temp;
    reg [3:0] cm;
     
    
    reg [31:0] num1;
    reg [31:0] num2;
    
 
  wire [3:0] FL;
    wire [31:0] num3;

	hw7 uut (
	.num1(num1),
	.num2(num2),
	.temp(temp),
	.cm(cm),
	.FL(FL),
	.num3(num3)
	);

initial gin
#100

num1=32'h00011;
num2=32'h00101;

#100; cm=0;
#100; cm=1;
#100; cm = 2;
#100; cm = 3;
#100; cm = 4;
#100; cm = 10;
#100; cm = 12;
End
