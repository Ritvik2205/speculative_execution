.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt eax, ecx
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], bx
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], bx
xor esi, 98
and rax, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rsi]
cmovns rcx, rdx
and rcx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rcx]
cmovo rdi, rdx
and bl, -30 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rdx]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rsi
cmovp ax, bx
cmovo ebx, edi
bt esi, edx
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], al
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], -20
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
or dil, dil
cmovno ecx, edi
and rbx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
