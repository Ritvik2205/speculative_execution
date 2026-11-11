.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg ebx, eax
and si, 23
sub dl, dil
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], dil
jmp .bb_0.1
.bb_0.1:
lea rcx, qword ptr [rdi + rsi]
and rax, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rax]
sub al, -3
and rcx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
