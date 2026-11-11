.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, cl
xor dl, dl
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
xchg dl, dil
sbb al, -114
jmp .bb_0.2
.bb_0.2:
xchg edx, eax
dec bl
sbb rax, 786640702
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
