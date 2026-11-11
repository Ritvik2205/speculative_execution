.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
and rax, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rax]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rcx
test dil, 46
and rax, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rax]
xor sil, 110
xor bl, bl
and rax, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], si
and bl, -40 # instrumentation
cmovle ax, bx
and al, -103
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdi]
and dil, 57 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rdx]
cmovb rdx, rdi
or bl, 13
and bx, 2
and rsi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rsi]
bt ax, 76
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
