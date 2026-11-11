.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
cmp ecx, 70
and rsi, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rsi]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
sub dl, 96
and rax, -273199823
and cl, cl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], sil
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
sbb dil, dl
sbb dil, dl
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
