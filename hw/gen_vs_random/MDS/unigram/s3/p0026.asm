.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not edi
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rsi]
or cl, 100
test al, -59
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 52
and rsi, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], ebx
and ax, si
bt esi, edi
and cx, bx
and rax, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdi]
cmovnb si, si
cmovl edi, edi
or rax, 1749358813
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 100
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], 119
and cl, 48 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rsi]
cmovnz ebx, eax
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], -40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
