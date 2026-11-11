.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rax]
or edx, -78
and dl, 84 # instrumentation
cmovl rcx, rax
and cl, 65 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rcx]
and bl, 3 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rsi]
or eax, -696456144
xor dil, al
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 3
bt rcx, 58
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 50
btc di, di
cmovo ax, si
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], rsi
and dl, -40 # instrumentation
cmovp edx, edx
and cl, 91 # instrumentation
cmovle rdi, rdi
and rdx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], esi
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], 11
and dl, -52 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rdi]
or dl, -97
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
