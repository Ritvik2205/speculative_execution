.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], -40
and rdx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rdx]
xchg dil, al
or al, cl
and rsi, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rsi]
btc bx, dx
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
sub di, 36
and rdx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdx], 12
xchg bl, al
and dl, -109
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
