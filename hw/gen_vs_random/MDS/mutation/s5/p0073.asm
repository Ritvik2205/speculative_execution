.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, di
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 6
or cx, -42
and rsi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rsi]
or eax, -1777347252
and rbx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], ecx
and rsi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rsi]
cmovnb rdx, rsi
btc di, 233
jmp .bb_0.1
.bb_0.1:
and cl, -85 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rsi]
and dl, dl
and rsi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rsi]
cmovle dx, ax
and sil, 74
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rdi
cmovno rcx, rdi
cmovno dx, si
and rax, 79
and dl, 113 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
