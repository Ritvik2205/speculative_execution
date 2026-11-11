.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, -75
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rdi
lea rax, qword ptr [rcx + rax + 68]
cmp dl, -56
or al, al
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], 23
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 7
jmp .bb_0.1
.bb_0.1:
xchg si, dx
imul ax, dx, 64
dec bx
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax], 61
or cl, cl
btr edx, esi
lea rdx, qword ptr [rdx]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 98
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
