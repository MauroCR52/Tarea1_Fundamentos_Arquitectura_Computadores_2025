module combinatorio (

    input logic A, B, C, D,       // entradas de sensores
    input logic q1, q2,           // entradas desde los flip-flops
    output logic Y1, Y2           // salidas hacia flip-flop
	 
);
    logic or1_out, or2_out;

    // or1_out = A OR B
    or_gate or1 (.a(A), .b(B), .y(or1_out));

    // or2_out = A OR C
    or_gate or2 (.a(A), .b(C), .y(or2_out));

    // sumador recibe q1 y q2 actual del flip flop
    sumador sum (
        .A(q1), 
        .B(q2), 
        .C(or2_out), 
        .D(or1_out), 
        .Z1(Y2), 
        .Z2(Y1)
    );
	 
endmodule