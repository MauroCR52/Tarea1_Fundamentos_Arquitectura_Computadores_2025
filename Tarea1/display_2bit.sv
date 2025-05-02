module display_2bit (
    input logic A, B,
    output logic a, b, c, d, e, f, g
);

    // Salidas de compuertas intermedias
    logic n1, n2;
    logic t0, t1, t2, t3, t4, t5, t6, t7;

    // Negaciones necesarias
    not_gate na (.a(A), .y(n1));
    not_gate nb (.a(B), .y(n2));

    // Segmento a: ~(A)
    not_gate seg_a (.a(A), .y(a));

    // Segmento b: siempre encendido (0)
    assign b = 0;

    // Segmento c: B + A'
    or_gate seg_c_or (.a(B), .b(n1), .y(c));

    // Segmento d: A + B
    or_gate seg_d_or (.a(A), .b(B), .y(d));

    // Segmento e: A'
    not_gate seg_e (.a(A), .y(e));

    // Segmento f: A' · B'
    and_gate seg_f_and (.a(n1), .b(n2), .y(f));

    // Segmento g: A · (B + B') = A
    assign g = A;

endmodule