.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov al, cl
add sil, al
xor dl, 64
jmp .bb_0.1
.bb_0.1:
lea si, qword ptr [rcx + rax + 90]
test dx, 93
and al, dil
lea ax, qword ptr [rsi + rcx + 26]
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], -110
sub rdi, 43
test si, 84
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], cl
test dx, 14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
