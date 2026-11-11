.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rsi]
setb sil
sub al, -75
lea rbx, qword ptr [rcx + rax + 61]
cmovnp di, cx
jmp .bb_0.1
.bb_0.1:
add bl, 89 # instrumentation
sbb cl, al
sub bl, -96
sbb cl, al
jmp .bb_0.2
.bb_0.2:
test al, -56
and bl, 89
neg rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
