.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rcx, rcx
sub al, 63
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rbx
sub cl, al
sbb al, -112
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
cmp bl, dil
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 98
adc edx, 34
lea rdx, qword ptr [rbx + rdi]
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
