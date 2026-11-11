.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 40 # instrumentation
btc rdx, rdx
sbb eax, 1332762061
sub cl, dil
setz cl
setns dl
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
setb dil
cmp ebx, -33
and rdx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdx]
jnle .bb_0.2
jmp .bb_0.3
.bb_0.2:
sub al, bl
sbb dl, cl
js .bb_0.3
jmp .exit_0
.bb_0.3:
sbb bl, al
cmp dil, -58
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
