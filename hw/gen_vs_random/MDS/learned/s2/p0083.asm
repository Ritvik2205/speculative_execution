.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -232610484
xor bl, 67
xor rbx, 89
test al, dl
xor dl, dil
and rdx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdx]
xor al, -89
and cl, cl
and rbx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rbx]
or sil, bl
xor ax, -16696
or al, -24
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 67
and rax, -636362975
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
