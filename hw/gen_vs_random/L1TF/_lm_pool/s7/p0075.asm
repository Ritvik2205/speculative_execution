.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, 45
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
test cl, 70
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
xor bl, dil
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
add edx, 56
test al, dil
xor cl, 89
or dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
