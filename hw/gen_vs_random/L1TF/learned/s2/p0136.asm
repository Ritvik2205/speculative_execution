.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, sil
cmp al, dl
and cl, 84
xor ax, 30996
jmp .bb_0.1
.bb_0.1:
lea cx, qword ptr [rbx + rdi + 79]
add dl, dl
and bl, 89
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
xor ax, 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
