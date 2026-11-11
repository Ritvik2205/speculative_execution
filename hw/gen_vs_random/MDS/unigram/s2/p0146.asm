.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 4
xor rax, 93
cmovz rbx, rdx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rcx]
and dl, -7
test esi, 54
and cl, -81 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -41
xor bl, cl
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 2
btr eax, ecx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
cmovp ax, bx
or cx, 10
or dx, 46
and rdx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdx], 7
cmovz rbx, rdi
and rbx, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], 100
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
