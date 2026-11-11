.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -7
test al, -71
test rcx, -1420345926
and rax, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rax]
not ecx
add cl, -127
jns .bb_0.1
jmp .exit_0
.bb_0.1:
xor dx, -128
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
