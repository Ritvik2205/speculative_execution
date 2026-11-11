.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
lea eax, qword ptr [rsi]
and bl, 124
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dl
and rdi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], bl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
sbb ebx, 90
and bl, cl
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], bl
movzx ax, dil
adc cl, -19
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -107
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
