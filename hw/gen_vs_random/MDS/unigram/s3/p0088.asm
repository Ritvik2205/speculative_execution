.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr edx, ecx
test rsi, 879594088
and cl, 127
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 100
and rbx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rbx]
cmovnbe dx, di
cmovb ebx, eax
cmovs eax, eax
cmovnbe si, ax
bts ebx, edx
jmp .bb_0.1
.bb_0.1:
cmovs ax, bx
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rdi
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -116
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 103
and rdx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
and rdi, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 54
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 12
and rdx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rdx], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
