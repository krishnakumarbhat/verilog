`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:37:10 02/10/2022 
// Design Name: 
// Module Name:    mux21 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mux21(input a,b,s,output w);
assigin w=s?b:a;
endmodule
// assgin operation andacodition opration

module mux21d(input a,b,s,output w);
reg w;
always@(a,b,s) begin 
if (s) w=b;
else w=a;
end
endmodule
//procddural statement

module ANDOR (input i1,i2,i3,i4,output y);// writing number of ports
assign y = (i2&i2)|(i3&i4);
endmodule

module mux21E(input a,b,s output w);
wire s_bar;
not U1(s_bar ,s);
ANDOR u2(a,s_bar,s,b,w);
endmodule
//module indentation ansd andor is two and and  or 

`timescale lns/100ps
module mux8 (input sel,input [7:0] dta1,data0, output [7:0] bus1);
assigin #6 bus1 = sel? data1:data0;
endmodule 
// octal 2 to 1 mux


`timescale lns/100ps
module Flop (reset,din , clk ,qout);
output qout;
reg qout;
always @(negedge clk)begin 
if (reset)qout <= #* 1'b0;
else qout <= #8 din;
end
endmodule
//flip flop description

`timescale lns/100ps
module Counter4 (inpput reset ,clk ,output [3:0] count);
reg [3:0] count;
always @ (negedge clk )begin 
if (reset) count <= #3 4'b00_00;
else count <= #5 count + 1;
end
endmodule

// shift register 8-bit
`timescale 1ns/100ps
module ShiftRegister8 (input sl, sr,clk,input [7:0] ParIn, input [1:0] m , output reg [7:0]ParOut);
always @ (negedge clk) begin
case (m)
0: ParOut <= ParOut;
1:ParOut <= {s1 ,ParOut [7:1]};
2:parOut <= {ParOut [6:0],sr};
3: ParOut <= ParIn;
default :ParOut <= 8'bX;
endcase
end
endmodule


// 8 bit arthamatic logic unit 
`timescale 1ns/100ps
module ALU8(input [7:0] left ,right, input [1:0] mode, output reg [7:0] ALUout);
always @(left,right, mode) begin
case (mode)
0:ALUout = left + right ;
1:ALUout = left + right ;
2:ALUout = left + right ;
3:ALUout = left + right ;
default: ALUout = 8'bX;
endcase
end
endmodule

// interconnections

ALU8 U1 (.left(Inbus), .right(ABinput), .mode(function) ,ALUout(Outbus) );
mux8 U2 (.sel(select_source), .data1(Aside), .data(Bside) );
ALU8 U1 (Inbus,ABinput ,function,Outbus);
Mux8 U8 (select_source, Aside, Bside);


//number mo
//also in full adder output between sum and co is 3ns and 4ns respectivly 
module testnumber;
reg [11:0] a= 8'shA6; initial $displayb ("a=" ,a);
reg [11:0] b= 8'sh6A; initial $displayb ("b=" ,b);
reg [11:0] c= `shA6; initial $displayb ("c=" ,c);
reg [11:0] d= 8'shA6; initial $displayb ("d=" ,d);
reg [11:0] e= 8'shA6; initial $displayb ("e=" ,e);
reg [11:0] f= 8'shA6; initial $displayb ("f=" ,f);
reg [11:0] g= 8'shA6; initial $displayb ("g=" ,g);



endmodule


// keyword for system task 
//$display default $setup begin tril small
// also wire has delay and also use underscore for logic BAR




