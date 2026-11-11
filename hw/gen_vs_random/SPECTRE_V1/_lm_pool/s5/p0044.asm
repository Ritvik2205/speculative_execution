.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
sub cl, dil
and rbx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rbx], 90
cmp bx, 4
cmp dil, -58
sbb dl, bl
sbb ecx, 74
lea ax, qword ptr [rcx + rdi + 34958]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edx
cmp eax, -240917296
and rax, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rax]
adc dil, 8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
