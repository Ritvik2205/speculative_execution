.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc al
and rax, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rax]
and dl, 10
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
lea rdi, qword ptr [rdx + rax]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rcx
or al, -57
or sil, dl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
jmp .bb_0.2
.bb_0.2:
sbb al, -50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
