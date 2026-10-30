module tt_top_lvl (
    input wire [7:0] GPIO_i; // input GPIOs
    inout wire [7:0] GPIO_io; // flexible input/output GPIOs
    output wire [7:0] GPIO_o; // output GPIOs

    input wire clk; // clock
    input wire rst_n; // active low reset
)

endmodule