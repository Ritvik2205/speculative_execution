.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -103 # instrumentation
cmovns eax, eax
and rdi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], ebx
test cl, 101
and cl, 8 # instrumentation
cmovnl rsi, rdx
and rdx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rdx]
btr si, di
cmovle cx, bx
bt rcx, rcx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], al
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -27
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
cmovnbe rdi, rsi
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rsi
xor dl, 8
and al, 17 # instrumentation
cmovnp edi, eax
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 27
and rsi, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
