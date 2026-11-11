.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg eax, esi
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 34
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rdi
sub cl, dil
sub dl, -34
jmp .bb_0.2
.bb_0.2:
lea rdx, qword ptr [rsi + rdi]
mov al, dil
and rdi, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rdi]
lea ax, qword ptr [rsi + rdi + 96]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
