.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
sub dl, 107
cmp al, sil
sbb dil, 35
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
cmp dl, al
add cl, dl
sub cl, -127
test edx, -38580719
sub rax, -1881584175
add al, sil
add al, cl
or ax, -26182
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
