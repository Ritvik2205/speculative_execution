.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 12
not cl
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
cmovnp esi, edx
and eax, 33
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rdi], eax
or bl, -54
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], ebx
xor sil, bl
and rdi, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
btr eax, ecx
and bl, 68
cmovnl si, ax
and rcx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 2
and di, 91
and rsi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rcx
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdi
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
