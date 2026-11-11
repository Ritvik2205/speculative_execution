.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdx, qword ptr [rdx]
sbb ax, 82
adc ebx, 3
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
test ax, 19339
not cx
cmp al, dl
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], -45
jnp .bb_0.3
jmp .exit_0
.bb_0.3:
sbb rax, 1161375577
add al, 18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
