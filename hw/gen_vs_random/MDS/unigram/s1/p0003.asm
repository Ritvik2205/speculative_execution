.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rbx]
bt edi, ebx
bts dx, 50
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], eax
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -15
test al, sil
and cx, -2
xor dil, 81
and cl, 11 # instrumentation
cmovp esi, ebx
cmovno bx, di
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], ecx
test bl, bl
and rsi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], bx
xor esi, 19
and al, -72 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdi]
cmovno rax, rcx
and rsi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dl
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
