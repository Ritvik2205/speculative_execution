.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, -401020526
xchg rdi, rax
xor cl, dil
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
cmp al, 56
cmp cl, dl
adc al, 80
sub dx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
