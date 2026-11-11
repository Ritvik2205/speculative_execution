.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
or bx, 38
test sil, -55
and rbx, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rbx]
or dil, bl
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rsi
bts cx, bx
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -57
test dil, -80
cmovz si, si
or dl, -21
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], cx
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], cx
and rbx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], si
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ebx
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], edi
and rax, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
