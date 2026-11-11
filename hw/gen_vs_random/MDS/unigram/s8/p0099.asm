.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -7
and dl, -99 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 25
and dil, sil
bts rsi, rdx
test al, 66
and rax, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
cmovns rdx, rdi
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and bl, 33 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdi]
and dl, 59 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rsi]
cmovz rcx, rdi
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], ebx
bt ax, 76
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
or sil, -78
and al, -38 # instrumentation
cmovnb ax, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
