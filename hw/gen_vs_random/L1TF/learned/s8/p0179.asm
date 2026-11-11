.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rsi]
cmp rbx, 22
adc bl, al
lea edx, qword ptr [rbx]
sub al, 26
inc ebx
xor cl, bl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
