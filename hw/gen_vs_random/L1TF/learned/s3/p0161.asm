.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg edx, eax
xor al, dl
sbb bl, -88
and rax, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
adc dl, -12
jmp .bb_0.3
.bb_0.3:
test al, -32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
