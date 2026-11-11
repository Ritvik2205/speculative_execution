.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
xchg esi, edi
sbb al, 66
or cx, 23
adc eax, -689629357
and rdx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdx]
sub dl, 107
sub cl, 92
cmp eax, 2
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
sub sil, dil
cmp al, 98
or al, -83
and cl, bl
and ax, 16313
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
