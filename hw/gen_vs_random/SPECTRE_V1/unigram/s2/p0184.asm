.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dil
cmp rcx, 3
adc al, -82
neg edx
bt ebx, 45
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
sbb cl, cl
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], rbx
and rdi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdi]
and rdi, rbx
movzx ecx, cx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], dx
nop
sub al, -82
mov ax, 52
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and bl, -65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
