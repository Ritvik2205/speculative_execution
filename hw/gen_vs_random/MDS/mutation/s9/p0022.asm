.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 5
or cx, -42
btc di, 233
cmovnb rdx, rsi
and rsi, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rsi]
and si, di
and rbx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], ecx
and rsi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rsi]
or eax, 678817098
jmp .bb_0.1
.bb_0.1:
and dl, dl
cmovno rcx, rdi
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rdi
and dl, 113 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rbx]
and cl, -85 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rsi]
and rax, -1931765367
cmovle dx, ax
and rsi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rsi]
cmovno dx, si
and sil, -56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
