.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, cl
and rcx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], ecx
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
test dil, bl
cmovnb rbx, rsi
and rsi, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rsi]
cmovns eax, ecx
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ecx
test dl, -85
and rbx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1593756837
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], edx
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rsi
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rcx
test rdx, rax
and rcx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rsi]
test dl, -119
btc edx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
