.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], 40
add cl, -127
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
sbb cl, 105
test al, 34
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], cl
xor cl, dil
jnle .bb_0.2
jmp .bb_0.3
.bb_0.2:
jnbe .bb_0.3
jmp .exit_0
.bb_0.3:
and cl, -57
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
