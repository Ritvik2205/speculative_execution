.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, bl
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
or dl, dil
sub cl, -21
and dl, -109
and rdi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
jns .bb_0.2
jmp .bb_0.3
.bb_0.2:
jnp .bb_0.3
jmp .bb_0.4
.bb_0.3:
js .bb_0.4
jmp .exit_0
.bb_0.4:
add dl, 47
sbb bl, cl
sbb eax, 99727957
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
