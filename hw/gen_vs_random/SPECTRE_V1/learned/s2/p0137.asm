.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], di
xor al, -74
xor al, al
sbb al, 118
or dx, 16
cmp al, 53
jnbe .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp ebx, -33
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], al
setns dil
jns .bb_0.2
jmp .exit_0
.bb_0.2:
cmp bx, 86
lea cx, qword ptr [rdx + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
