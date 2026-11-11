.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, esi
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -112
or sil, 122
add al, 18
and rcx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rcx]
lea rcx, qword ptr [rdi + rsi + 74]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
lea cx, qword ptr [rbx]
lea ax, qword ptr [rbx + rdx]
xor rcx, rdx
and bl, dil
bswap rsi
test ax, -13885
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
