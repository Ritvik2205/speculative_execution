.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, ecx
cmovno si, ax
lea ebx, qword ptr [rax + rax + 18654]
sub dil, sil
mov dil, bl
or ecx, 88
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
test bl, -8
lea bx, qword ptr [rcx]
adc bl, -73
cmp sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
