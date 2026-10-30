`default_nettype none

module preprocessor (
    input  wire [7:0] gpio_in,      // Input from GPIO
    input  wire [7:0] router_in,    // Input from router
    output wire [7:0] level_out,    // Level output to state machines
    output wire [3:0] event_out,    // Event output to state machines

    input  wire       clk,          // clock
    input  wire       rst_n         // reset_n - low to reset
);


endmodule