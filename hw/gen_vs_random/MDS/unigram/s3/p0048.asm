.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp bx, ax
xor eax, 571592471
and rcx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rcx]
btc si, 43
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 36
and rdi, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ecx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], cx
cmovz cx, cx
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], bx
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], ebx
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 60
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], si
cmovp ax, ax
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rax
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], eax
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
