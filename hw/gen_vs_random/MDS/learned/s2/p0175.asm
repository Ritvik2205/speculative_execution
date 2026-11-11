.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, cl
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
xor bl, -102
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
and cl, -71
xor cl, 83
test edx, -1561252782
jmp .bb_0.1
.bb_0.1:
xor dl, dil
jmp .bb_0.2
.bb_0.2:
or bl, bl
and eax, 943733866
jmp .bb_0.3
.bb_0.3:
or cl, 6
xor dl, -59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
