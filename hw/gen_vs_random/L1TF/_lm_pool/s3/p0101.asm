.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rdi]
cmp ecx, 65
and rdx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rdx]
add sil, -61
lea ecx, qword ptr [rdi]
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], cx
sbb cl, -11
and dx, 75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
