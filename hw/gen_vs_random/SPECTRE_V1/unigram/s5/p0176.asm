.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub ax, 124
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], al
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
cmovnbe ax, bx
setnp dil
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
cmovz rcx, rbx
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], 96
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rax]
add cl, 44 # instrumentation
cmovz ebx, edi
and rbx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rbx]
sub dl, dil
imul ebx, esi, 24
lea edi, qword ptr [rax + rax]
and rax, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rax]
lea bx, qword ptr [rax + rdx + 40]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
