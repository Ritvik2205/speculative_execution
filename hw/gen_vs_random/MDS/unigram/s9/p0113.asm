.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, cl
and rsi, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rsi]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rcx
btc eax, esi
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], si
cmovnp cx, cx
and cl, 65 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 91
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
test sil, dil
test al, 91
and bx, dx
and rcx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], si
cmovp cx, cx
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], si
and rcx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rcx]
cmovz rcx, rbx
and rcx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
