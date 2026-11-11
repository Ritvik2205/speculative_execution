.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rdx]
bts rbx, 25
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rdi
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], edx
xor si, 91
and bl, 127 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], si
and rsi, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rax]
and bl, 98 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
bt ecx, edi
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 5
bt ebx, eax
bt dx, 162
btc eax, edi
and bl, 121 # instrumentation
bt rbx, 4
xor edi, 50
bts di, 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
