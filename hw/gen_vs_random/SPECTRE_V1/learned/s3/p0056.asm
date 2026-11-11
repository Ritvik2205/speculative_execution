.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rbx, rbx
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea si, qword ptr [rbx]
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], sil
cmp bl, cl
add bl, bl
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
jp .bb_0.3
jmp .exit_0
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
add bl, 70
test ecx, 83
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
