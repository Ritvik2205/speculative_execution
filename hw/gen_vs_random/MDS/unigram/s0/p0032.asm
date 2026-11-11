.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovns edx, edi
cmovb ecx, ebx
and sil, dl
cmovnbe dx, bx
and rsi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rsi]
and cl, -22 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rax]
cmovo rax, rbx
and rax, 0b1111111111111 # instrumentation
not word ptr [r14 + rax]
btc rdi, 6
or cx, 0b1000000000000000 # instrumentation
bsr di, cx
and rdx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdx]
cmovl rcx, rdi
and rdx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rsi], rax
and rax, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rax]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rax
and rbx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 16
bt ecx, 90
and rsi, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
