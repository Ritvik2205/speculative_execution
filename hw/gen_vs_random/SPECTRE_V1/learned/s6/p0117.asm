.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc al
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 6
or si, si
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], si
sbb dl, dil
sub al, dil
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
or al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
