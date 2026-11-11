.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 76
btc rdi, 6
and dl, -7
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 86
or dl, -18
btc bx, 179
and rax, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rax]
xor bl, dl
and rdx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 64
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rbx
or bl, sil
xor dx, ax
bts esi, edx
or dx, 20
cmovns ecx, eax
and bl, bl
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
