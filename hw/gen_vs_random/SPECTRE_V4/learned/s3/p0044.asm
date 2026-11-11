.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rcx, -121
and bx, 20
sbb bl, 121
sub cl, 18
test sil, bl
cmp rbx, -91
sbb dl, -106
add dl, cl
cmovnp rdx, rbx
test dil, sil
and al, sil
sbb al, 43
or dl, sil
sub dl, cl
test sil, 1
and rcx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
