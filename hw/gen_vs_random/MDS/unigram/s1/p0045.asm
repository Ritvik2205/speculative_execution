.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rbx]
and dil, -17 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ebx
bt ebx, ebx
and rax, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rdx], esi
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rax
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 37
and rbx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rbx]
or cl, 100
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 99
jmp .bb_0.1
.bb_0.1:
cmovbe si, bx
and rsi, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rsi]
btc rsi, rdi
cmovp ecx, ecx
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], al
cmovz rax, rsi
bt rdx, 24
and rbx, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rbx]
bt ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
