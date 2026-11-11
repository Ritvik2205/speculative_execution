.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
sbb cl, 105
jns .bb_0.1
jmp .exit_0
.bb_0.1:
setns bl
sub cl, -21
lea rdx, qword ptr [rbx + rcx + 68]
and rdi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdi]
xor dl, cl
sbb ebx, 84
lea dx, qword ptr [rdi + rax + 87]
or al, 100
inc edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
