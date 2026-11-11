.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 115
sub bl, al
sub dil, 35
sub al, 96
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
adc al, cl
and sil, bl
add al, -6
sub cl, -127
add al, -1
and cl, 126
test bl, -116
cmp sil, cl
add al, -4
sub al, 26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
