.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc cl
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
sbb dil, cl
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], al
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rdi]
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub cl, bl
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
js .bb_0.2
jmp .exit_0
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
js .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
