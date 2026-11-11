.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, dl
adc cl, -34
test al, -104
jmp .bb_0.1
.bb_0.1:
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rcx]
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
and sil, 37
jmp .bb_0.5
.bb_0.5:
and rdx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdx]
jmp .bb_0.6
.bb_0.6:
test cx, 39
sbb cl, dl
jmp .bb_0.7
.bb_0.7:
and rdx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
