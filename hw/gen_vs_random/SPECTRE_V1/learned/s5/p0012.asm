.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, eax
and dl, -92
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
or eax, 1276549484
sbb cl, bl
and rbx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rbx]
add dl, 47
jp .bb_0.2
jmp .exit_0
.bb_0.2:
sbb bl, dl
sub bl, dl
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
