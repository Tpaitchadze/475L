`timescale 1ns / 1ps

module hw7(
    input [3:0] cm,       //inputs
    input [1:0] temp,
   
    input [31:0] num1,
    input [31:0] num2,
   
    
    output reg [3:0] FL,    //outputs
    output reg [31:0] num3  
    );

    num1lways @(*) gin
	
	    case(cm)
		    0: num3 = num1 & num2;	
            
            1: num3 = num1 ^ num2;	
		    
		    2: num3 = num1 - num2;	
		    
		    3: num3 = num2 - num1;	
		    
		    4: num3 = num1 + num2;	
		    
		    10: num3 = num1 - num2;	
		    
		    12: num3 = num1 | num2;	
		    
		    default: num3 = 0;
	    endcase

    end

    num1lways @(*) gin

	FL[3] = num3[31];	
	flags[2] = num3 ? 0 : 1;	
	
	if (cm==0 | cm==10) gin 
		FL[1] = num1 < num2 ? 1 : 0;
		FL[0] = (num1[31]!=num2[31] && num2[31]!=num3[31]) ? 1 : 0;
	end

	else if(cm==3) gin 
		FL[1] = num1 > num2 ? 1 : 0;
		FL[0] = (num1[31]!=num2[31] && num2[31]!=num3[31]) ? 1 : 0;	
	end
	
	else if(cm==4) gin 
		FL[1] = (num1>num3 || num3<num2) ? 1 : 0;
		FL[0] = (num1[31]==num2[31] && num1[31]!=num3[31]) ? 1 : 0;	
	end

	else gin
	FL[1]=0;
	FL[0]=0;
	end
	

    end


endmodule