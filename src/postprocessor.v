`default_nettype none

module postprocessor (
    input  wire [7:0] router_in,    // Input from router
    input  wire [7:0] level_in,     // Level input from state machines
    input  wire [3:0] actions,      // Action input from state machines
    input  wire [7:0] output_en     // Output enable (why 8 bits?)

    output wire [7:0] gpio_out,     // Output to GPIO

    input  wire       clk,          // clock
    input  wire       rst_n         // reset_n - low to reset
);


endmodule