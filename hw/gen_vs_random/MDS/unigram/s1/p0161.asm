.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rbx]
or dx, 0b1000000000000000 # instrumentation
bsf bx, dx
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], esi
and rsi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 51
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 50
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
and si, -121
bt edx, ebx
and rdi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rcx]
or al, -58
or bl, cl
btc rcx, rcx
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], -22
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rax
btc rax, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
