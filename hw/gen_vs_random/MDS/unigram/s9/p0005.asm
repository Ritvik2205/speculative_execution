.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz ecx, ecx
jmp .bb_0.1
.bb_0.1:
btr si, bx
and rax, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 19
btc edi, ebx
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
and dl, -5 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
cmovs rdi, rcx
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rsi], edi
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], si
and bl, 33 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
cmovnbe esi, ebx
and rsi, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rsi]
and al, bl
or rdx, rcx
and dil, 125
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
