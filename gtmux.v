module  gtmod(a,b,c,x,y,z,p,q);
input a,b,c;
output x,y,z,p,q;
xor xor1(p,c,b);
nor n1(q,c);
nand nd1(y,a,b);
not and2(x,a,b);
or or1(z,a,b);


endmodule




module muxe21(a,b,s,q);
input a,s,b;
output q;
assign q = ((~s) & a) | (s & b);
endmodule

module mux_tb();
input a,b,s;
output q;
muxe21 a1(a,b,s,q);
begin 
forever begin
begin a=0;b=0;s=0 end #10;
begin a=0;b=1;s=0 end #10;
begin a=0;b=1;s=0 end #10;
begin a=1;b=1;s=0 end #10;
begin a=0;b=0;s=1 end #10;
begin a=1;b=0;s=1 end #10;
begin a=0;b=1;s=1 end #10;
begin a=1;b=1;s=1 end #10;
end
initial begin
    
end
end
endmodule
