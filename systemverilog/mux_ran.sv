module mux4_to_1
(input [3:0]i,[1:0]sel,output logic y);
assign y=sel[1]?(sel[0]?i[3]:i[2]):(sel[0]?i[1]:i[0]);
endmodule