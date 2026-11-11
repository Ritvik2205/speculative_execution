.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, 45
cmp ebx, 76
and ax, 7954
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdx], 82
cmp cl, -89
cmp sil, -11
jmp .bb_0.2
.bb_0.2:
test bl, 12
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 6
sbb al, dil
add dl, 125
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
