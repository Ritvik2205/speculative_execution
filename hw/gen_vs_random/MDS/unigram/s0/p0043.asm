.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, sil
and rbx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rbx]
bt si, bx
or ax, 0b1000000000000000 # instrumentation
bsr dx, ax
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
and rax, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rax]
and cl, 91 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rbx]
and bl, 45 # instrumentation
cmovnb dx, ax
bt rax, rax
or di, 20
and rcx, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rcx]
cmovnz esi, ecx
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rsi], bx
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], cx
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], si
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], cx
xor al, cl
xor dl, sil
cmovnbe edx, ebx
and rbx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
