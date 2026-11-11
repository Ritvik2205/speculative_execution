.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, al
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], -115
add al, -72
and al, 33
test al, -71
lea rax, qword ptr [rcx + rbx + 58]
sub cl, al
add cx, -103
test dl, 113
lea rcx, qword ptr [rbx + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
