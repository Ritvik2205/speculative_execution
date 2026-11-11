.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea bx, qword ptr [rbx]
cmovno ax, bx
and rbx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rax]
lea ax, qword ptr [rcx + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rax]
add dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
