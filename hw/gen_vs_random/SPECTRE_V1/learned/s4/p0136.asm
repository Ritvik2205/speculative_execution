.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
sbb al, -107
and rcx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], al
add dx, -90
cmp bl, -114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
