.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 86 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dl
sbb sil, -78
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], si
sbb cl, 105
sub cl, -21
cmp rbx, 95
sub dil, cl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
cmp al, bl
xor dl, cl
test dl, -36
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
