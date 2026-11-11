.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 88
add rax, 6
or ebx, -124
lea eax, qword ptr [rdi]
sub dl, dil
cmp dil, dl
add dl, cl
test cl, -120
bt eax, ebx
and cl, dl
and dil, 98
and dx, 71
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
