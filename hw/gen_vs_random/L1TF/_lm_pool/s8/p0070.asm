.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], 27
and ax, 7954
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
test dx, 69
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rbx], 54
xor dil, al
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
and rdi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
