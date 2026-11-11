.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -13240
lea rbx, qword ptr [rdi + rdx + 54]
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rsi]
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
jnle .bb_0.3
jmp .bb_0.4
.bb_0.3:
js .bb_0.4
jmp .exit_0
.bb_0.4:
sbb al, sil
sbb sil, al
add cl, -127
xchg rbx, rsi
sub cl, -47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
