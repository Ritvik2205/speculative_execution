.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, cl
lea ax, qword ptr [rdx]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, edx
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
sbb dil, dil
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
jnz .bb_0.2
jmp .bb_0.3
.bb_0.2:
sub al, -1
js .bb_0.3
jmp .bb_0.4
.bb_0.3:
jno .bb_0.4
jmp .exit_0
.bb_0.4:
add cl, sil
and bl, al
and dx, 20
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
