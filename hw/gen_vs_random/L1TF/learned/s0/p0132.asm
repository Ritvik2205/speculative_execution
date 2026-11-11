.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, -113
test dl, -37
jmp .bb_0.1
.bb_0.1:
sub dl, -78
mov al, -101
add dl, bl
xor cl, al
and cl, bl
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
test al, -70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
