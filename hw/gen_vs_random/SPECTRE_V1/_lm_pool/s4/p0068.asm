.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, dl
test bl, -8
or si, si
test rcx, -1420345926
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
js .bb_0.2
jmp .bb_0.3
.bb_0.2:
lea si, qword ptr [rax]
and rdi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdi]
jnle .bb_0.3
jmp .exit_0
.bb_0.3:
add dil, -75
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
sbb cl, 105
add bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
