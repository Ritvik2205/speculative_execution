.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ax, bx
xor al, 9
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], ax
and rcx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
or dil, 16
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
xor dl, 34
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
xor al, dil
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 60
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 4
and rdi, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
