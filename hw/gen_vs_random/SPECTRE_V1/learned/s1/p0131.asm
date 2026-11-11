.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdi, qword ptr [rdi]
xor cl, dil
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and dl, dil
sbb eax, -108
and rdx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdx]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf esi, ecx
cmp bl, al
and rbx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rbx]
sub ax, -15315
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
