.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rax, -1365488374
mov bl, cl
jmp .bb_0.1
.bb_0.1:
jb .bb_0.2
jmp .exit_0
.bb_0.2:
sub bl, cl
mov dl, al
and rsi, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rsi]
or ax, 18658
test sil, 47
add dl, dl
add al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
