.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rdx
test ecx, -1843375753
and rsi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rsi]
test edx, -1561252782
and cl, -127 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rdi]
cmovbe ecx, ecx
and bl, 120 # instrumentation
cmovnp ax, bx
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 117
and rsi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
jmp .bb_0.1
.bb_0.1:
bts eax, 222
or dil, bl
cmovo rsi, rsi
btc ax, 8
and sil, 74
and rdx, 47
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and ax, -16061
and bl, 120 # instrumentation
cmovnp ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
