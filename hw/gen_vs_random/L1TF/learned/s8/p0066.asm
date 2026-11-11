.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rax]
sbb sil, -19
and sil, -90
test al, -82
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
bts esi, 97
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -44
and dil, -82
sbb al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
