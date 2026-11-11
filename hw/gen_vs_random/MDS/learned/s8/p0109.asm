.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
test cl, sil
or rdi, 21
or dil, -76
jmp .bb_0.1
.bb_0.1:
xor bl, dl
test al, dil
or al, bl
xor ax, 23633
xor dil, dl
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 17451
or bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
