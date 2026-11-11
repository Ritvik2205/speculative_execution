.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], -86
inc dil
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 46
test al, -126
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
mov dil, bl
lea esi, qword ptr [rdx + rbx + 80]
mov al, sil
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
cmp dil, dil
adc bl, al
inc rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
