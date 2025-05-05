module display_2bit_tb;

    // Entradas
    logic A, B;

    // Salidas
    logic a, b, c, d, e, f, g;

    // Instancia del módulo a probar
    display_2bit dut (
        .A(A), .B(B),
        .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g)
    );

    // Procedimiento de prueba
    initial begin
        $display("A B | a b c d e f g");
        $display("----------------------");

        A = 0; B = 0; #10;
        $display("%0b %0b | %0b %0b %0b %0b %0b %0b %0b", A, B, a, b, c, d, e, f, g);

        A = 0; B = 1; #10;
        $display("%0b %0b | %0b %0b %0b %0b %0b %0b %0b", A, B, a, b, c, d, e, f, g);

        A = 1; B = 0; #10;
        $display("%0b %0b | %0b %0b %0b %0b %0b %0b %0b", A, B, a, b, c, d, e, f, g);

        A = 1; B = 1; #10;
        $display("%0b %0b | %0b %0b %0b %0b %0b %0b %0b", A, B, a, b, c, d, e, f, g);

        $finish;
    end

endmodule