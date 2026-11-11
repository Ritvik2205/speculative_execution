.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, 68
sub bl, -96
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], dx
not al
or sil, -44
cmovb ax, dx
or al, bl
btr edx, 7
test dl, -37
or cl, dl
and rdi, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
