.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rbx]
xor rax, 459999114
and rax, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], eax
and rbx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], ecx
cmovnz eax, esi
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 0
and rbx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 5
jmp .bb_0.1
.bb_0.1:
or cl, al
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 118
or dl, -89
bt rax, rdi
and rcx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rbx]
cmovnb rdx, rcx
and rdx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdx]
or eax, -696456144
and rsi, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
