.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rbx, qword ptr [rdx]
test al, 42
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
setnb cl
jl .bb_0.1
jmp .exit_0
.bb_0.1:
sbb dl, dil
and dl, -111
or cx, 36
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
