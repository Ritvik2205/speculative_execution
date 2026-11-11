.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rdi]
inc cl
lea rax, qword ptr [rbx + rdi + 94]
sub al, -89
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
add dil, 72
and rbx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rbx]
jb .bb_0.2
jmp .bb_0.3
.bb_0.2:
and al, 33
lea cx, qword ptr [rbx + rax]
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
