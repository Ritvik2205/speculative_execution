.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 36
and rbx, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rbx]
lea rax, qword ptr [rbx + rcx]
xor bl, 38
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], -80
or rcx, 56
btc dx, si
jle .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
