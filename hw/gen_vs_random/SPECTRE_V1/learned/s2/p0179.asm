.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
imul rax, rbx, 84
xchg esi, eax
sub bl, dil
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
jp .bb_0.2
jmp .exit_0
.bb_0.2:
sub ax, 124
sub cl, bl
cmp al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
