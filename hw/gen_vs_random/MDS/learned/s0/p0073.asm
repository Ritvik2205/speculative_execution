.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and eax, -872608366
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], -26
and rdi, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rdi]
bt ebx, esi
and rcx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rdx
and di, si
and rdi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdi]
bt eax, eax
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rdx], eax
cmovnl ebx, esi
or dl, bl
or bl, 73
or rbx, -124
and al, -37
xor cl, bl
xor al, -119
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
and al, 126
and al, 73
test dil, -67
and rax, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rdi
and rax, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
