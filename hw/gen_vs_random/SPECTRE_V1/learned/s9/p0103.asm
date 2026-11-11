.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 6
and rax, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rax]
sub al, bl
and rdi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
xor dl, 71
jns .bb_0.2
jmp .exit_0
.bb_0.2:
sbb dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
