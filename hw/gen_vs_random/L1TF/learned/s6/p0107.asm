.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, sil
and rdx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
and bl, 89
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], al
test cl, 70
xor sil, 64
movzx eax, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
