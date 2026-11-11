.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdi]
lea ecx, qword ptr [rdi]
xor dl, cl
and rax, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rax]
add cl, -20
lea eax, qword ptr [rbx]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], bl
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
