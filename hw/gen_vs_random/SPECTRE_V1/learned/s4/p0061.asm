.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov dil, cl
test al, -75
sub bl, -6
test al, 34
cmp dl, cl
add cx, -103
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
xor al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
