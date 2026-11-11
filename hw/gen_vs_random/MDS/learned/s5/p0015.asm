.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, 23633
xor al, 99
jmp .bb_0.1
.bb_0.1:
or edx, esi
xor rax, -1499464454
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
xor al, bl
xor cx, -18
or rax, 1020005579
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
and ax, 29207
and sil, -9
and dil, 125
xor si, 91
or al, 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
