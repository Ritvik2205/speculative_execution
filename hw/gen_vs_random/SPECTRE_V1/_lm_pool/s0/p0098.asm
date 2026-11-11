.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rcx]
add dl, 47
cmp edi, 29
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dil
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
sbb bl, -41
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 55
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
