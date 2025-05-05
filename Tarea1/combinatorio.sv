module combinatorio (

    input logic A, B, C, D,       // entradas de sensores
    input logic q1, q2,           // entradas desde los flip-flops
    output logic Y1, Y2           // salidas hacia flip-flop
	 
);
    logic or1_out, or2_out;

    // or2_out = A OR B
    or_gate or2 (.a(A), .b(B), .y(or2_out));

    // or1_out = A OR C
    or_gate or1 (.a(A), .b(C), .y(or1_out));

    // sumador recibe q1 y q2 actual del flip flop
    sumador sum (
        .A(or2_out), 
        .B(or1_out), 
        .C(q2), 
        .D(q1), 
        .Z1(Y1), 
        .Z2(Y2)
    );
	 
endmodule