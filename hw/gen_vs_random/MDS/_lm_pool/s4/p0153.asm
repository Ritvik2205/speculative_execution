.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 9
and rax, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rax]
and bl, bl
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
or cl, 6
xor rax, -1657511731
and al, dl
jmp .bb_0.1
.bb_0.1:
and bl, dl
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
not al
btr bx, 100
xor al, -19
or rax, 1461812833
and sil, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
