.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, dil
sbb al, -14
mov bl, dil
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
jnp .bb_0.3
jmp .bb_0.4
.bb_0.3:
and bx, -118
jle .bb_0.4
jmp .exit_0
.bb_0.4:
lea cx, qword ptr [rsi]
cmp cl, dl
add al, dil
or si, 0b1000000000000000 # instrumentation
bsf ax, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
