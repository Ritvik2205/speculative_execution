.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], dil
cmovo edi, ebx
btr rcx, 96
or dx, 0b1000000000000000 # instrumentation
bsr di, dx
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 10
cmovo cx, bx
btc ax, 51
cmovo rdi, rbx
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 5
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rax]
and cl, -81 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rax]
and dl, 102 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], 41
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
xor dil, dil
and rsi, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rsi]
and cl, -109 # instrumentation
cmovns rsi, rsi
and rax, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
