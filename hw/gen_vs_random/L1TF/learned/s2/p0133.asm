.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, ebx
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], 52
cmp ax, -31327
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
jmp .bb_0.2
.bb_0.2:
lea ax, qword ptr [rsi + rdi + 15]
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
xor al, sil
sbb al, dil
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
