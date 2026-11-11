.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 39 # instrumentation
cmovbe di, bx
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 87
cmovs cx, cx
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 59
test dil, 46
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rax
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 103
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 7
and rbx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rbx]
cmovb bx, cx
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rax], cx
cmovnl ebx, ecx
and cl, -111
cmovnbe rdi, rdi
and dl, 116 # instrumentation
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
cmovz eax, eax
xor eax, 2063216578
and rbx, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rbx]
not rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
