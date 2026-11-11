.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rax]
cmovnl edx, esi
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 41
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 11
and cl, 8 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rdi]
and dl, 4 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], sil
bts ax, 22
xor ebx, 62
and bl, sil
cmovnz rbx, rax
btc cx, di
and bl, 65 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
cmovbe esi, eax
or dil, sil
and rax, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rax]
not rdx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
