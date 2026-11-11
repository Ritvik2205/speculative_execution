.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rax]
or al, -61
xor rax, -773894210
and dx, 3
or al, cl
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
xor cl, -13
or al, dil
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
test rbx, 47
test dl, -119
or al, 74
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
xor dl, cl
xor ebx, 74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
