.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
or si, 94
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rcx], eax
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 50
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 17451
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], di
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 74
and rax, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
test ebx, -961564216
and rdx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdx]
cmovz si, si
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], eax
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rdi], esi
or cx, 0b1000000000000000 # instrumentation
bsf cx, cx
btc rcx, rbx
and rdx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 37
and rcx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
