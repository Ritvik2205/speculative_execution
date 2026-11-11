.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe eax, edi
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], esi
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 2
test cl, 0
and rcx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], bx
xor al, dil
and rdi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdi]
and sil, -81 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdi]
btr rcx, 41
test al, -81
cmovbe bx, ax
not al
bt rdi, rdx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rbx]
cmovl rdx, rsi
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 16
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 4
and rbx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], eax
and bl, 127 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
