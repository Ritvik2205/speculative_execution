.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
cmp rcx, 64
or edi, 93
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rbx]
lea edx, qword ptr [rbx]
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
jb .bb_0.2
jmp .exit_0
.bb_0.2:
and bl, 87
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], cl
add dl, 47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
