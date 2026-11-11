.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, -36 # instrumentation
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], esi
and cl, bl
sbb cl, dl
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], al
xchg bl, dl
cmp dil, -78
test al, 59
sub bl, cl
and rax, 0b1111111111111 # instrumentation
dec word ptr [r14 + rax]
and dl, -109
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
