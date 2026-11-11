.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -36 # instrumentation
and rdx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdx], eax
sub al, cl
add al, -109
and dl, -109
lea ebx, qword ptr [rax]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and dl, -111
sbb al, 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
