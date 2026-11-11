.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -72
sbb al, bl
sbb bl, -41
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
not bx
lea cx, qword ptr [rax + rdx + 14]
bt rbx, 244
and rcx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
