.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -116
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], edi
sub bl, cl
jno .bb_0.1
jmp .exit_0
.bb_0.1:
test cl, -33
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], cl
xchg rdx, rbx
and al, dil
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
lea rdi, qword ptr [rbx + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
