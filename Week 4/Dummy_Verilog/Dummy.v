module analog_async_up_down(
    input in_ring,
    input in_bias,
    input in_inn,
    output out_adc
);

wire ring_adc;

analog_1bit_adc one_bit_adc(
    .in(in_ring),
    .out(ring_adc)
);

analog_ring_osc ring_osc(
    .in(ring_adc),
    .in(in_inn),
    .in(in_bias),
    .out(out_adc)
);

endmodule
