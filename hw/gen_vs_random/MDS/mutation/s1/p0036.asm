.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -24
and rdi, rcx
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, esi
and rax, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], dx
xor cl, 83
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], -22
and rdi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rdi], di
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], al
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rbx], rdx
btr cx, 9
and rax, -978188247
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 84
test rax, -2052112368
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -45
cmovle cx, si
and rsi, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rsi]
xor bl, al
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
