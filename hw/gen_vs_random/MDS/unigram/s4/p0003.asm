.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
test eax, 343548072
and rsi, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rsi]
or esi, edx
and rdx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], di
cmovz edi, edx
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
test dil, -80
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
and rbx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 6
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf esi, edx
and rcx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], edi
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], 124
and bl, -5 # instrumentation
cmovnl cx, bx
and rsi, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rbx
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 29
test al, 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
