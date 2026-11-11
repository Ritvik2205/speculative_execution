.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, -68
xor al, -42
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], dil
sub bl, -6
sub al, -89
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dil
lea dx, qword ptr [rsi + rcx + 34]
xor cl, 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
