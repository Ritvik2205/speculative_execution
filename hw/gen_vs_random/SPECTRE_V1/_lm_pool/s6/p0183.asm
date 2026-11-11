.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], -46
sub al, bl
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb al, 49
adc ax, -614
sub sil, al
jmp .bb_0.2
.bb_0.2:
adc eax, 56
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
cmp dl, -115
sbb eax, -108
xor cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
