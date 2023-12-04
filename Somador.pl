% Definições das portas lógicas
and_gate(1, 1, 1).
and_gate(_, _, 0).

xor_gate(0, 1, 1).
xor_gate(1, 0, 1).
xor_gate(_, _, 0).

or_gate(0, 0, 0).
or_gate(_, _, 1).

% Modelo do somador lógico
somador(I1, I2, I3, O1, O2) :-
    xor_gate(I1, I2, X1_out),
    and_gate(I1, I2, A1_out),
    xor_gate(X1_out, I3, O1),
    and_gate(X1_out, I3, A2_out),
    or_gate(A1_out, A2_out, O2).

%Consultas prolog
%Para quais combinações de entradas a primeira e a segunda saída de C são iguais?
%somador(I1, I2, I3, O, O).
%Que combinações de entradas fariam a primeira saída de C (o bit de soma) ser 1 e a segunda saída de C (o bit de transporte) ser 0?
%somador(I1, I2, I3, 1, 0).
%Para quais combinações das entradas 1 e 2 a entrada 3 não altera o resultado do bit de transporte (segunda saída de C)?
%somador(I1, I2, 0, _, O2), sumador(I1, I2, 1, _, O2).
