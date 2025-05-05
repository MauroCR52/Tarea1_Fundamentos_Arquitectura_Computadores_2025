module flip_flop2b (
    input logic btn,    // Botón de fpga
    input logic a, b,   // Entradas de datos separadas
    output logic qa, qb // salidas del flip-flop
);
    logic clk_real;  // Reloj a usar en el flip-flop, invertido a la lógica del botón

    assign clk_real = ~btn;  // Se invierte la l

    // Instancia del flip-flop D para el bit a
    d_flip_flop ff0 (
        .clk(clk_real),
        .d(a),
        .q(qa)
    );

    // Instancia del flip-flop D para el bit b
    d_flip_flop ff1 (
        .clk(clk_real),
        .d(b),
        .q(qb)
    );
endmodule