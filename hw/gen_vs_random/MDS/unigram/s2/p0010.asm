.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, al
bt esi, ecx
or dl, dl
and rdx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rdx]
and sil, -128 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rax]
test rdi, rdx
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rdi
cmovz ebx, eax
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 45
and bl, al
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 13
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
and rsi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rsi]
cmovbe eax, eax
and al, 2 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdi]
or cl, dil
and rdi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], ax
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
xor al, -19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
