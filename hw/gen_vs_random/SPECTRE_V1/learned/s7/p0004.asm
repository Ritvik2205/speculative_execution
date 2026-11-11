.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 113
add al, 3
test al, 42
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub dl, -48
test rdi, -1846965753
jmp .bb_0.2
.bb_0.2:
js .bb_0.3
jmp .exit_0
.bb_0.3:
add edi, -91
or eax, -1161451853
sub bl, dl
xor rdi, rbx
cmp ax, 7046
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
