.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rcx]
lea ax, qword ptr [rcx]
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
sbb rsi, 89
xor dl, bl
xor al, 16
and rdx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
