module combinatorio (
	input logic A, B, C, D,
	output logic Y1, Y2
);
// Entradas de los sensores, salidas hacia el flip-flop

	logic or1_out, or2_out;
	
	// or1_out = C OR A
	or_gate or1 (.a(A), .b(B), .y(or1_out));
	
	// or2_out = B OR A
	or_gate or2 (.a(A), .b(C), .y(or2_out));
	
	
	sumador sum (.A(1'b0), .B(1'b0), .C(or2_out), .D(or1_out), .Z1(Y2), .Z2(Y1));
	
	
endmodule