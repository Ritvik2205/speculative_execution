.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, -62
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
mov dil, bl
or dx, 18
and rax, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rax]
movsx esi, sil
xor ax, 913
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
