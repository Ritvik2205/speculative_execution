.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rax]
or edx, ecx
sub cl, 86
jmp .bb_0.1
.bb_0.1:
sets dl
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rax], 79
cmovnp dx, si
not esi
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rdi], esi
cmp dl, -93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
