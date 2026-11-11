.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rcx, rcx
xor al, al
cmp al, cl
adc bl, 88
sub cl, bl
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub bl, sil
jmp .bb_0.2
.bb_0.2:
and dl, 0 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdx]
cmp al, 62
lea rax, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
