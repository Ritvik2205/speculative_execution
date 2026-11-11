.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 76
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1324040999
and dl, -73
or edx, -1
btc rsi, rsi
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
and bl, 38 # instrumentation
cmovbe ecx, ebx
and rsi, 0b1111111111111 # instrumentation
not word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], 124
jmp .bb_0.1
.bb_0.1:
test cl, bl
and rdi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rsi
and rax, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rax]
and ax, 13090
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
btc rcx, rsi
and dl, dl
not rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
