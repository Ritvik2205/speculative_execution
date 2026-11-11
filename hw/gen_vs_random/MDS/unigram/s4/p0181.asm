.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovbe ax, cx
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
and bx, di
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rcx]
xor cl, dil
and dl, 124 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rsi]
xor si, bx
bt rdx, rsi
cmovns esi, edx
test rax, 1732677821
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], -23
btc rcx, 60
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 3
and al, -61 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rsi]
or bx, 29
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 4
and dl, 124 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rdi]
cmovnz ax, dx
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
