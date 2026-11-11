.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdx]
lea eax, qword ptr [rdx]
sub dil, sil
and sil, 52
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
inc cl
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], -40
xor dl, 71
sub dl, bl
lea ax, qword ptr [rcx + rax + 78]
cmp cl, 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
