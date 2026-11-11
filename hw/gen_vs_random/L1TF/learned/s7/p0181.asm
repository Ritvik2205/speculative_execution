.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, dil
xor ax, -16232
jmp .bb_0.1
.bb_0.1:
test al, dil
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
sbb bl, al
or al, dil
jmp .bb_0.2
.bb_0.2:
and cx, 127
lea di, qword ptr [rdx]
adc sil, dil
test sil, dl
lea edi, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
