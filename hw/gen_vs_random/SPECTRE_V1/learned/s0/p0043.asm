.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
mov cl, dil
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
or bl, dil
and rdx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], 99
xchg cl, dl
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dil
sub al, dl
sbb rcx, 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
