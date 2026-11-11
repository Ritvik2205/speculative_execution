.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 48
and rax, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rax], eax
and rcx, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rcx]
cmovs si, bx
bt ebx, 107
and rsi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], eax
cmovz rbx, rsi
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 25
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rsi
and rcx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdx], 28
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 37
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rbx
bt rdx, rax
or bl, 84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
