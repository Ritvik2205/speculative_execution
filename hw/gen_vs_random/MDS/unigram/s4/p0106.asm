.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, bl
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], -84
and rsi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -90
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 0
xor dl, -125
and bl, -13 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdx]
or bl, bl
and bl, -34 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 89
and dil, dil
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 26
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rax], esi
and rcx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rcx]
and cl, 95 # instrumentation
cmovns rcx, rcx
xor cl, 122
and rbx, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rbx]
cmovnp si, ax
and rcx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
