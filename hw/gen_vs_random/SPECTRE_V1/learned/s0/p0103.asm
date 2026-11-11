.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -126
test dl, -7
sbb cl, al
sub al, dl
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
sub bl, -6
add al, -44
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], -70
mov bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
