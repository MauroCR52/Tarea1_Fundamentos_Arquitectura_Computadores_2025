module sumador (

    input logic A, B, C, D,
    output logic Z1, Z2
	 
);

//Z1: bit 1 del sumador resultante
//Z2: bit 2 del sumador resultante

    logic xor1_out, and1_out, xor2_out;

    // Z1 = B XOR D
    xor_gate xor1 (.a(B), .b(D), .y(Z1));

    // and1_out = B AND D
    and_gate and1 (.a(B), .b(D), .y(and1_out));

    // xor2_out = A XOR C
    xor_gate xor2 (.a(A), .b(C), .y(xor2_out));

    // Z2 = (A XOR C) XOR (B AND D)
    xor_gate xor3 (.a(xor2_out), .b(and1_out), .y(Z2));

endmodule