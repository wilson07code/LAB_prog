module design_tb();
logic a,b,c,d,e,f,g,y;
test_design t1(.*,.y);
initial 
begin
{a,b,c,d,e,f,g}=1'b0;
repeat(127)
#5{a,b,c,d,e,f,g}={a,b,c,d,e,f,g}+1;
end
endmodule