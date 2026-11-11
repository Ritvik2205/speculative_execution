.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
or dl, 51
and rbx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rbx]
or dil, -76
or al, -75
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
and rdi, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rdi]
btr dx, 47
or al, cl
and cl, -6
test al, 66
test al, dil
or bl, 13
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
xor rbx, 89
xor al, cl
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
