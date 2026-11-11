.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovs ebx, edx
cmovnz si, si
and dil, 6
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rbx]
bts rax, 149
cmovnl cx, dx
cmovs ax, cx
btr bx, 30
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
cmovnb cx, cx
or al, -48
and rsi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], ecx
and rsi, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
and cx, 10
and dil, 34
btc rdx, 138
or dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
