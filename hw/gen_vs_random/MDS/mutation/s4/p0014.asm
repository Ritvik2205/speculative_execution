.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], ecx
cmovnz eax, esi
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 5
and rbx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 3
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], eax
and rbx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rbx]
xor rax, -345061362
and rbx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
cmovnb rdx, rcx
and rbx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rbx]
or dl, -31
and rcx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rcx]
or eax, 1725503461
bt rax, rdi
and rdx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdx]
or cl, al
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], -77
and rsi, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
