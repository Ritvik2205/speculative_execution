.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rbx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
or al, -57
xor al, 89
jmp .bb_0.2
.bb_0.2:
sbb edx, 23
xor al, cl
xor ax, 32760
and bx, 60
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
