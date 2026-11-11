.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rdx]
lea si, qword ptr [rax]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], -71
and rbx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rbx]
or cl, dil
and dl, cl
lea cx, qword ptr [rdx + rax + 34]
test dx, 60
and rax, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rax]
and ax, 7954
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
not ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
