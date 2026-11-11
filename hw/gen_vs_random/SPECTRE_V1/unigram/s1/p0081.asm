.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnb sil
and dl, dil
add al, -13
neg rax
and rdi, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rdi]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], al
and rdi, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdi]
add cl, -127
and rcx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rcx]
add cl, 36 # instrumentation
sub rbx, rbx
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], sil
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 61
and cl, dil
cmovnz dx, di
xor edx, edi
lea eax, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
