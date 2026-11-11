.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 37
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
and dil, -22
test al, sil
cmp sil, -11
xor ax, 30996
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
sbb ax, -14164
lea rdi, qword ptr [rbx]
jmp .bb_0.2
.bb_0.2:
and edi, 90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
