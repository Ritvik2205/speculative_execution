.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rax
or al, 100
lea rbx, qword ptr [rdx + rbx + 67]
add sil, 2
setnb bl
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and sil, -55
xchg rax, rbx
sbb bl, cl
mov bl, al
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
