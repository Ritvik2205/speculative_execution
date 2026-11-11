.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 121 # instrumentation
cmovs edx, edx
and rcx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], rax
and rax, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rdx]
sbb ax, -26133
sbb ax, -26133
sbb esi, 80
cmovs edx, ecx
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], al
and dl, cl
cmp ax, -79
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], 29
cmovo edi, ebx
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 103
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -702719947
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
