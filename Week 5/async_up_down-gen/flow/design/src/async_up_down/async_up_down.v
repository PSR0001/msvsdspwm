module async_up_down(
    input in_ring,
    input in_bias,
    input in_inn,
    output out_adc
);

wire ring_adc;

RING_OSCILLATOR ring_osc(
    .in(in_ring),
    .out(ring_adc)
);

COMPARATOR one_bit_adc(
    .inp(ring_adc),
    .inn(in_inn),
    .inb(in_bias),
    .out(out_adc)
);

endmodule

