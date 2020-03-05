module seq_tb();
logic clk,rst,move;
logic [2:0]y;

seq s1(clk,rst,move,y);

initial 
clk=1'b0;

always
begin
#10 clk=~clk;
end

initial
begin
rst=1'b1;
#10 rst=1'b0;
#50 move=1'b1;
#100 move=1'b0;
end

initial
$monitor($time,"clk=%d,rst=%d,move=%d,y=%d",clk,rst,move,y);
initial
#200 $stop();
endmodule