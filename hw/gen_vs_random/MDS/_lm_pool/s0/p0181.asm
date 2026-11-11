.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, dil
xor rbx, 89
test edx, -372470678
and sil, 89
and rdx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdx]
or ax, -6817
test sil, cl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rsi]
test cl, bl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
test ecx, -1843375753
test bl, al
or al, -22
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
test al, sil
not dil
and eax, 561041355
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
