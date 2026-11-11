.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
cmovno rsi, rax
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
cmovz bx, bx
and bl, 26 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], cx
bt edx, 61
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rdx
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 48
and rsi, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rsi]
and ecx, -104
or bl, al
xor bl, -61
and bx, 93
and rdx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 90
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
cmovnl rdi, rcx
cmovnb ecx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
