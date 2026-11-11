.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 40 # instrumentation
cmovbe si, di
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], -87
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
xor al, dil
sbb dl, al
cmovno ax, di
add al, 74
cmovno cx, dx
sbb sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
