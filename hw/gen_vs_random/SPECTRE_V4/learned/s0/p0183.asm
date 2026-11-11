.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, 89
cmp rax, -47
and cl, -128
and bl, 76
adc bl, 35
xor bx, dx
bts eax, 82
sbb al, 102
and rdi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdi]
test eax, 1600638830
and dl, dil
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 1
btr ecx, 88
or sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
