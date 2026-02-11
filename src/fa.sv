//  Module: fa
//

module fa_module
    (
        input  logic A,
        input  logic B,
        input  logic Cin,
        output logic S,
        output logic Cout
    );

    logic i0, i1, i2;

    // Primo XOR
    xor u0(i0, A, B);

    // Somma finale
    xor u1(S, i0, Cin);

    // Primo AND
    and u2(i1, A, B);

    // Secondo AND
    and u3(i2, i0, Cin);

    // OR finale per il carry out
    or u4(Cout, i1, i2);

endmodule: fa_module
