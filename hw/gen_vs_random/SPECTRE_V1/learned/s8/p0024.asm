.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -116
test dl, -7
sub bl, dl
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 3
lea dx, qword ptr [rax]
and sil, al
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dil
and rcx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rcx]
add al, 18
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
