.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 59
cmovnbe eax, eax
cmovnz rsi, rdx
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
and al, -18 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 81
jmp .bb_0.1
.bb_0.1:
and al, 84
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 3
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
cmovp ax, bx
xor al, 9
and rsi, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rsi]
xor sil, 94
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 5
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
and ecx, ecx
and dl, -41 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rsi]
or bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
