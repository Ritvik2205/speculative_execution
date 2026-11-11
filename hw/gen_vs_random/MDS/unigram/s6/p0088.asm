.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rbx]
and cx, -2
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
and eax, esi
and ax, ax
and rdx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rdi
and bl, 49 # instrumentation
cmovbe rax, rdi
or ebx, -104
and cl, 114 # instrumentation
cmovz cx, bx
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rbx
and rdi, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 85
cmovno rax, rdi
and rcx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rcx]
xor al, 115
and rcx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rax]
cmovnl edi, eax
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
