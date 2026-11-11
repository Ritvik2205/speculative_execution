.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, 27703
sub dl, dil
xor bl, bl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
jmp .bb_0.1
.bb_0.1:
or sil, dil
lea rdx, qword ptr [rax + rsi]
jmp .bb_0.2
.bb_0.2:
setno bl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
sbb bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
