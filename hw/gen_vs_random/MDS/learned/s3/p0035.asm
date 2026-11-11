.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr ax, bx
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 3898
test cl, 91
xor bl, cl
and di, 91
jmp .bb_0.1
.bb_0.1:
xor sil, al
xor cl, sil
jmp .bb_0.2
.bb_0.2:
and ax, dx
jmp .bb_0.3
.bb_0.3:
cmovnp rdx, rbx
test al, cl
cmovle di, ax
xor cl, -13
or bl, -125
xor dil, 8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
