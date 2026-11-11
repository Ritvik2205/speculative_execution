.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rcx]
add dil, 72
lea ax, qword ptr [rdi]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
cmp rax, 900122030
mov sil, al
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
sbb dl, bl
or edx, 39
sbb dil, sil
sub dl, 71
lea si, qword ptr [rdi]
and di, 31
test si, 83
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
