.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 21 # instrumentation
adc cx, 25
cmp rbx, 17
xor dil, dil
sbb bl, sil
js .bb_0.1
jmp .exit_0
.bb_0.1:
test al, -71
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 82
xor sil, al
lea rdi, qword ptr [rbx + rdx + 15]
adc al, -92
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
