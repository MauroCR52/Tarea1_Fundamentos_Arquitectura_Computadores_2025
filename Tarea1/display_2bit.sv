module display_2bit (
    input logic A, B,
    output logic a, b, c, d, e, f, g
);

    // Salidas de compuertas intermedias
    logic n1, n2;

    // Negaciones necesarias
    not_gate na (.a(A), .y(n1));  // A negado
    not_gate nb (.a(B), .y(n2));  // B negado

    // Segmento a: B * A'
    and_gate seg_a (.a(n1), .b(B), .y(a));  

    // Segmento b: 0
    assign b = 0;  

    // Segmento c: A * B'
    and_gate seg_c (.a(A), .b(n2), .y(c));  

    // Segmento d: A + B
    and_gate seg_d (.a(n1), .b(B), .y(d));  

    // Segmento e: B
    assign e = B;  

    // Segmento f: A+B
    or_gate seg_f (.a(A), .b(B), .y(f));  // Se enciende cuando A' y B' son 1

    // Segmento g: A'
    assign g = n1;

endmodule