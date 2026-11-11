.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dx, bx
or cl, 6
and ax, -10351
and bl, 68
xor al, 122
xor bl, cl
test eax, 158941032
btc cx, 115
cmovno rsi, rcx
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
not dil
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
or bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
