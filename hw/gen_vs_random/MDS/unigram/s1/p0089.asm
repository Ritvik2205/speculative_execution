.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr ax, dx
and rdx, rdx
and rbx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rbx]
and dil, dil
cmovo edx, esi
and rdx, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 24
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rbx]
and al, 101 # instrumentation
cmovno edi, eax
and rdx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rcx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdx]
and al, dil
and rdx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdx]
xor al, 55
and rdi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rdi]
btr edi, edi
cmovp cx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
