.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -2
add al, -46
or dil, -113
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -98
xor cl, 89
and bl, 89
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 112
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 5
and dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
