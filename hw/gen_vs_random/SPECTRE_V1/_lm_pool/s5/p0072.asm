.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, dl
adc dil, cl
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
and bl, -43
and rax, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rax]
sub sil, -18
jp .bb_0.2
jmp .exit_0
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rcx]
and cl, sil
cmp dil, -78
or al, dil
and rcx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rcx]
xor cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
