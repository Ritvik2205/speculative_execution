.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dl
test sil, dil
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
test al, 127
and dl, -73
or rbx, -72
and bl, 68
and rdi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdi]
test cl, sil
or dil, dil
xor al, 8
test esi, 425331143
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rsi
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
xor dil, -70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
