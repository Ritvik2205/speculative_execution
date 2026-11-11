.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test si, di
mov dil, bl
sub al, dl
and dl, 24
xchg rbx, rcx
sub sil, 71
cmp al, -53
xor ax, di
test edx, -38580719
cmp eax, -813838876
add dl, 109
sub cl, bl
or al, -83
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
