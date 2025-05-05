module combinatorio_tb;

     // Declaración de señales
    logic A, B, C, D;
    logic q1, q2;
    logic Y1, Y2;

    // Instanciación del módulo a probar
    combinatorio uut (
        .A(A),
        .B(B),
        .C(C),
        .D(D),
        .q1(q1),
        .q2(q2),
        .Y1(Y1),
        .Y2(Y2)
    );

    // Estímulos
    initial begin
        // Inicialización de las señales
        A = 0; B = 0; C = 0; D = 0;
        q1 = 0; q2 = 0;
        
        // Aplicar estímulos y mostrar resultados
        $display("Inicio de la simulación");
        $monitor("A=%b, B=%b, C=%b, D=%b, q1=%b, q2=%b, Y1=%b, Y2=%b", A, B, C, D, q1, q2, Y1, Y2);

        // Caso 1: A = 1, B = 0, C = 0, D = 0
        #5 A = 1; B = 0; C = 0; D = 0; q1 = 0; q2 = 1;
        
        // Caso 2: A = 0, B = 1, C = 0, D = 0
        #5 A = 0; B = 1; C = 0; D = 0; q1 = 1; q2 = 1;
        
        // Caso 3: A = 0, B = 0, C = 1, D = 0
        #5 A = 0; B = 0; C = 1; D = 0; q1 = 1; q2 = 0;
        
        // Caso 4: A = 0, B = 0, C = 0, D = 1
        #5 A = 0; B = 0; C = 0; D = 1; q1 = 0; q2 = 0;

        // Fin de la simulación
        #5 $finish;
    end

endmodule