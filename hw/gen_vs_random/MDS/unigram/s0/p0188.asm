.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], si
and al, 46 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rbx]
xor si, 91
test dl, -119
cmovl esi, eax
and rdx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rsi
bts rsi, 205
and rax, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rax]
btc rdx, 41
and rcx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rcx]
or dil, -78
btc rbx, rbx
or sil, dl
or dil, al
and rax, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], edi
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], esi
and al, -38 # instrumentation
cmovnb dx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
