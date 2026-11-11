.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 78
sub rdi, 64
sub si, ax
and rbx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rbx]
inc eax
xor dl, 71
sub bl, -6
lea bx, qword ptr [rsi + rdx]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], cl
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -79
sbb al, -112
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
