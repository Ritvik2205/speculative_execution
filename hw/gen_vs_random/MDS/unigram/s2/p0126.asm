.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rbx], di
btc edi, ecx
bts ecx, 184
xor bl, 67
btc rsi, rdx
and rcx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], di
and bl, -11 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdx]
or dil, -78
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 39
jmp .bb_0.1
.bb_0.1:
bts rdx, 200
and rcx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rcx]
bts bx, 3
or al, sil
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], bl
test edi, -1252846009
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 1
and rbx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdx]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
