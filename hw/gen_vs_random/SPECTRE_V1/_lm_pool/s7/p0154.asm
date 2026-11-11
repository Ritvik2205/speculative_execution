.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], di
lea rcx, qword ptr [rax]
test al, -71
and rcx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rcx]
test cl, -24
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp rbx, 14
js .bb_0.2
jmp .exit_0
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 50
add bl, -95
test bl, -8
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
