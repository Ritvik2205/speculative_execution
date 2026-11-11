.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -103 # instrumentation
cmovbe ax, ax
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 4
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], dil
sub sil, -18
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
imul rdx
lea rax, qword ptr [rbx]
adc bl, sil
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], al
inc rdx
jmp .bb_0.2
.bb_0.2:
test dl, 113
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
