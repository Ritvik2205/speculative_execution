.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rsi, rsi
imul al
add sil, -61
lea rdi, qword ptr [rax + rcx + 49]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
bt rax, 53
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 39
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -44
or sil, cl
sub al, dl
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
