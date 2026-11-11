.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rbx, rbx
cmp rax, 1189904463
sub cl, -21
sbb cl, 105
jmp .bb_0.1
.bb_0.1:
add al, -109
sub rax, -1628299544
sub rdi, 3
xchg bl, al
js .bb_0.2
jmp .bb_0.3
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
mov cl, al
cmp eax, -240917296
imul rdi, rbx, 75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
