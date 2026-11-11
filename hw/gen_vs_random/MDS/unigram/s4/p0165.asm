.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz rsi, rbx
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 53
cmovns rax, rcx
or sil, -8
cmovo bx, di
or rbx, -124
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], ebx
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rcx
bt edx, ebx
and rdx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rdx]
cmovns ax, dx
jmp .bb_0.1
.bb_0.1:
bt ebx, ebx
cmovnl dx, si
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 66
or dil, -52
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edx, eax
and bl, -66 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], esi
and rdx, 18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
