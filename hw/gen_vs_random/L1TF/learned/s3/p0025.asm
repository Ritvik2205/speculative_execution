.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, 287965578
lea si, qword ptr [rax]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
test bx, 82
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
jmp .bb_0.3
.bb_0.3:
lea rcx, qword ptr [rsi + rdx]
jmp .bb_0.4
.bb_0.4:
and rdi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
