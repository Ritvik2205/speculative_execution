.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdi]
and rcx, 62
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rcx], edi
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], -77
and rcx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rcx]
and cl, -115 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rax]
cmovno ecx, edx
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 27
and rcx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], di
bts bx, cx
and rcx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rcx]
cmovnb cx, cx
cmovz cx, ax
and rbx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rbx]
and dl, bl
bts si, 75
and rcx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
