.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -7
and bl, -65
sub sil, -18
jle .bb_0.1
jmp .exit_0
.bb_0.1:
mov cl, -72
sub dl, 96
lea eax, qword ptr [rcx]
lea ax, qword ptr [rcx]
lea rbx, qword ptr [rdi + rcx + 37]
xor dl, bl
sub al, dl
xor dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
