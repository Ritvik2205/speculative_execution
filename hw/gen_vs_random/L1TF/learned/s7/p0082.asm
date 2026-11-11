.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rdx]
sub al, -97
xor sil, 64
jmp .bb_0.1
.bb_0.1:
test al, -82
lea ecx, qword ptr [rax]
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
sbb dl, sil
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], sil
not sil
xor dl, al
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and rcx, 53
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
