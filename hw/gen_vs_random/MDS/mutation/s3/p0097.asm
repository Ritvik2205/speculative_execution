.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rdi], di
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], -22
and rdi, rcx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], al
and rax, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rax]
xor cl, 98
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], dx
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, esi
or al, 54
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rbx], rdx
xor bl, al
and rax, 4
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -45
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
btr cx, 9
and rsi, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rsi]
test rax, -359674714
cmovle cx, si
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
