.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -116
and rdx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdx]
bt ecx, 204
xchg edi, ebx
and rsi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rsi], 99
cmp al, 23
inc ecx
bts dx, 26
bts ecx, 65
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 30
cmovb dx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
