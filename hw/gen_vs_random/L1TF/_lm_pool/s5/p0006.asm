.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 104 # instrumentation
mov ebx, 76
sbb al, sil
test al, -82
and dil, -82
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rbx]
test dil, -126
or bl, al
xor dil, dl
bswap rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
