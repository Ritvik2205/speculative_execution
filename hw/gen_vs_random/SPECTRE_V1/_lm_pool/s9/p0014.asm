.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, -68
sbb bl, cl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
and rdi, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdi], 88
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdx]
and sil, cl
lea cx, qword ptr [rax + rsi + 44]
sbb cl, 105
add sil, al
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
lea rbx, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
