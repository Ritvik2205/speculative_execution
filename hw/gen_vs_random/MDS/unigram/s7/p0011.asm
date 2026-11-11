.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rdx]
test esi, 1857129931
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], ax
and rax, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rbx]
bt eax, 28
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], bx
and cl, -34 # instrumentation
cmovs rdx, rcx
xor eax, 1640090871
and bl, 127 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
cmovnz rdi, rsi
or bl, 43
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rax]
and bx, 92
and rsi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rsi]
test rcx, -613256812
or esi, -110
or bl, 43
and bl, 108 # instrumentation
cmovns rax, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
