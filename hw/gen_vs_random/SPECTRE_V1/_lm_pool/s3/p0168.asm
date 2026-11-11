.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 124
cmp cl, dil
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub al, 63
and rdx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rdx]
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
adc al, -92
sub al, cl
and dl, -92
lea rax, qword ptr [rdi + rax]
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], dl
sub cl, -21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
