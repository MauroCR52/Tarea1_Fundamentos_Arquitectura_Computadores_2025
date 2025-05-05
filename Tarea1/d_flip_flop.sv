module d_flip_flop (
    input logic clk,
    input logic reset,   
    input logic d,
    output logic q
);

    always_ff @(posedge clk or negedge reset) begin
        if (!reset)       
            q <= 0;
        else
            q <= d;
    end
endmodule