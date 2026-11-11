.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -2
jmp .bb_0.1
.bb_0.1:
test cl, 93
cmp dil, al
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
or al, dil
lea si, qword ptr [rcx + rdi]
sbb cl, -11
and sil, bl
or rdx, -22
sbb bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
