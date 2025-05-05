module circuito_top (
    input  logic [3:0] SW,     // Switches SW[3:0] = A, B, C, D
    input  logic       btn,    // Botón del reloj
	 input  logic       reset,    // Botón de reset
    output logic       nand_out,  // Salida de la compuerta NAND
	 output logic a, b, c, d, e, f, g  // Salidas del display de 7 segmentos
);
    // Señales internas
    logic Y1, Y2;              // Salidas del módulo combinatorio
    logic qa, qb;              // Salidas del flip_flop2b (se retroalimentan al combinatorio)

    // Instancia del módulo combinatorio
    combinatorio comb_inst (
        .A(SW[3]), 
        .B(SW[2]), 
        .C(SW[1]), 
        .D(SW[0]), 
        .q1(qa), 
        .q2(qb), 
        .Y1(Y1), 
        .Y2(Y2)
    );

    // Instancia del módulo flip_flop D de dos bits
    flip_flop2b ff_inst (
        .btn(btn), 
		  .reset(reset),
        .a(Y1), 
        .b(Y2), 
        .qa(qa), 
        .qb(qb)
    );

    // Instancia de la compuerta NAND
    nand_gate nand_inst (
        .a(qa), 
        .b(qb), 
        .y(nand_out)
    );
	 
	 // Instancia del display de 7 segmentos
    display_2bit display_inst (
        .A(qb), 
        .B(qa), 
        .a(a), 
        .b(b), 
        .c(c), 
        .d(d), 
        .e(e), 
        .f(f), 
        .g(g)
    );
endmodule