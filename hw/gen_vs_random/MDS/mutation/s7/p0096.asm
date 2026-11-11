.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, -13
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], dx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rdi], di
and rdi, rcx
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], al
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, esi
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], -86
or al, 25
and rax, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
test cl, bl
and rdi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rsi
and rax, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rax]
and ax, -12519
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
btc rcx, rsi
and dl, dl
not rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
