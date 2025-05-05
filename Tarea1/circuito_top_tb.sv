`timescale 1ns / 1ps

module circuito_top_tb;

    // Entradas
    logic [3:0] SW;
    logic       btn;
    logic       reset;  

    // Salidas
    logic       nand_out;
    logic       a, b, c, d, e, f, g;

    // Instancia del módulo bajo prueba
    circuito_top dut (
        .SW(SW),
        .btn(btn),
        .reset(reset),  // <-- Conectamos reset
        .nand_out(nand_out),
        .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g)
    );

    // Simulación
    initial begin
        // Inicialización
        SW = 4'b0000;
        btn = 1;
        reset = 0;  // Activamos reset (activo en bajo)
        #5;
        reset = 1;  // Lo desactivamos y queda así toda la simulación

        // Caso 1: switches = 0001
        SW = 4'b0001;
        toggle_button();
        #10;

        // Caso 2: switches = 0010
        SW = 4'b0010;
        toggle_button();
        #10;

        // Caso 3: switches = 0100
        SW = 4'b0100;
        toggle_button();
        #10;

        // Caso 4: switches = 1000
        SW = 4'b1000;
        toggle_button();
        #10;

        $finish;
    end

    // Tarea para simular un flanco negativo del botón
    task toggle_button;
        begin
            btn = 1; #5;
            btn = 0; #5;  // flanco negativo simula clk_real
            btn = 1; #5;
        end
    endtask

    // Monitorear resultados
    initial begin
        $monitor("Time=%0t | SW=%b | btn=%b | reset=%b | nand_out=%b | Display=%b%b%b%b%b%b%b",
                 $time, SW, btn, reset, nand_out, a, b, c, d, e, f, g);
    end

endmodule