.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rax
sbb cl, 105
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
setno dil
add al, -44
jnle .bb_0.2
jmp .exit_0
.bb_0.2:
mov dl, al
sub al, dl
sub cl, bl
cmp ecx, 51
lea rax, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
