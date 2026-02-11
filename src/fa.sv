//  Module: fa

module fa_module
(
    input  logic A,
    input  logic B,
    input  logic Cin,
    output logic S,
    output logic Cout
);

    logic i0;  // A xor B
    logic i1;  // A and B
    logic i2;  // Cin and (A xor B)

    // Primo XOR
    xor u0(i0, A, B);

    // Secondo XOR -> Somma
    xor u1(S, i0, Cin);

    // Primo AND
    and u2(i1, A, B);

    // Secondo AND
    and u3(i2, Cin, i0);

    // OR finale -> Carry out
    or u4(Cout, i1, i2);

endmodule : fa_module
