module reg(input clk,rst,ld,[3:0]v din ,sin,[3:0]q);
always @(posedge clk , posedge rst)
begin 
if(rst)
q<=4'b0000;
else if(ld)
q<= dln;
else 
q<=q[q[3:1],sin];
end
endmodule
// this was for left shif operation
// in right sheft just changeing sin ,q[3:0] 
 
endmodule
