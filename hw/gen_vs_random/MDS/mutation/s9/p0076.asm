.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cx, 49
and si, di
cmovnb rdx, rsi
or eax, -696456144
and rbx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], ecx
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 5
and rsi, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rsi]
btc di, 164
and rsi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and cl, -85 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rsi]
and dl, 113 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rbx]
cmovle dx, ax
and rsi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rsi]
and dl, dl
and rax, 498847670
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rdi
cmovno rcx, rdi
and sil, -56
cmovno dx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
