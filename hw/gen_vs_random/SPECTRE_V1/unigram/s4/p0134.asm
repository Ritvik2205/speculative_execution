.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rax, qword ptr [rdi + rdi + 7]
mov dil, dl
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], dil
bt rdx, 76
and rdi, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rdi]
add dil, dil
sbb ecx, 44
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], -111
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rbx]
lea cx, qword ptr [rcx + rcx]
and rax, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rax]
imul esi, eax, 79
cmovnz cx, si
cmp cl, 47
lea ax, qword ptr [rbx]
cmovl ecx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
