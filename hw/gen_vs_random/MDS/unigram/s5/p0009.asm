.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
bts rax, 77
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], di
test dil, 46
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
and rax, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rax], 2
jmp .bb_0.1
.bb_0.1:
xor eax, eax
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], bx
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 90
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
and al, 8 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 94
cmovno rdi, rdi
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
and cl, -23 # instrumentation
cmovno edi, esi
xor dil, 81
test bl, -114
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
