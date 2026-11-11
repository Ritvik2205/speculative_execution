.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 99
or sil, -44
adc sil, 23
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
xor al, dil
sbb bl, -88
jmp .bb_0.1
.bb_0.1:
or bl, dl
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
test dl, -37
sbb al, cl
and rax, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rax]
or rcx, 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
