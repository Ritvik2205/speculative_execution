.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 53 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
cmovo ax, ax
and rdx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1626470119
and sil, -69
and rsi, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rsi]
xor di, -83
and cl, -85 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rdi]
and bl, 96 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 69
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rbx
and dil, 46 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rcx]
and dl, 57 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 99
and cl, 65 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rdi]
and dl, 93 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 5
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
