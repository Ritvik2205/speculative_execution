.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rax]
sbb al, 61
xor al, al
cmp bl, cl
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
add sil, -61
jmp .bb_0.1
.bb_0.1:
lea rax, qword ptr [rdx + rbx]
and rax, 1994547909
xor dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
