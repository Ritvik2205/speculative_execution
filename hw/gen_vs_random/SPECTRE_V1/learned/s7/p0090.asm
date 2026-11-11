.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -8
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dl
test dil, -116
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
cmp al, cl
sub dil, -111
and rax, -175411684
and dil, -114
lea rsi, qword ptr [rbx + rcx]
add cx, -103
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
