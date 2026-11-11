.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -36 # instrumentation
and rdi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 7
add al, -46
and dil, -22
and rdx, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rdx]
lea ebx, qword ptr [rdx]
sub al, dl
sub bl, dil
sbb al, 61
or dil, dl
or rbx, 18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
