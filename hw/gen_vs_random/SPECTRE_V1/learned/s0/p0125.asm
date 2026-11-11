.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dl
and dl, -92
cmovno rbx, rcx
lea cx, qword ptr [rcx]
adc bl, bl
sbb bl, dl
jmp .bb_0.1
.bb_0.1:
js .bb_0.2
jmp .exit_0
.bb_0.2:
sub rax, -1628299544
xor dl, 71
and ax, 32540
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
