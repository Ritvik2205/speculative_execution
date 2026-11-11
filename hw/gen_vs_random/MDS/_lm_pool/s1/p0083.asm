.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor di, -83
and ax, 27170
and dil, dl
cmovle bx, ax
test dl, cl
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], esi
xor ax, 23633
or dil, -41
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
test edx, -372470678
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 58
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -2966447
or sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
