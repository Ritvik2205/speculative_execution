.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 57
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 7
jmp .bb_0.1
.bb_0.1:
add bl, 68
xor al, 16
and rdi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdi]
and ax, 7954
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
lea di, qword ptr [rdi]
or bx, 90
test sil, 29
and rdx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
