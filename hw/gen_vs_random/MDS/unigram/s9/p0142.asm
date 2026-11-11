.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], cx
and al, 20 # instrumentation
cmovp ax, bx
xor dil, cl
or bx, 38
cmovnbe eax, edi
and rbx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rbx]
xor dl, sil
and rbx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
cmovb rsi, rbx
and rcx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rcx]
test dl, al
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dil
and bl, -99 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], al
and al, 16 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], dx
and bl, 1 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], 28
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
