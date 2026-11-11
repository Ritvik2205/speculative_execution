.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -14 # instrumentation
lea ax, qword ptr [rdx + rcx]
sbb dil, cl
bt si, 57
test al, -104
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
test al, -70
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
cmp cl, al
test rax, rsi
test rcx, 62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
