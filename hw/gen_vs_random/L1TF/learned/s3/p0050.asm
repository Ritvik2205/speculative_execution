.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 40 # instrumentation
cmovbe si, dx
mov dl, cl
xor cl, bl
and rbx, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rbx]
and cx, 127
jmp .bb_0.1
.bb_0.1:
test cl, 67
xor sil, cl
sbb sil, dil
and cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
