.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
cmovle cx, bx
and sil, sil
and eax, 461212071
and rsi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rsi]
or cl, 7
xor si, 91
or dil, -78
and sil, 74
test bl, al
test esi, 1857129931
xor rax, -1657511731
xor al, 8
and eax, -574348013
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
or cl, cl
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
and sil, -9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
