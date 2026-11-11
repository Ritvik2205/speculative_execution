.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt edi, eax
cmovno rax, rbx
test rdi, 87
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rax], edx
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdx]
and dx, 3
jmp .bb_0.1
.bb_0.1:
cmovnbe rcx, rdi
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rbx]
or dl, -8
cmovp rdi, rdx
test esi, 1857129931
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 25
and bl, 56 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
cmovnb eax, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
