.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdi, rdi
cmp rsi, 53
add sil, -68
or dl, al
test cl, -24
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub al, sil
and rdi, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
lea di, qword ptr [rbx + rdi + 76]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
