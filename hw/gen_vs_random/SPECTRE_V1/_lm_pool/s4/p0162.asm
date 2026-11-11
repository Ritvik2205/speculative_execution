.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec si
sbb esi, 35
sbb eax, -417098439
adc dl, 107
lea edi, qword ptr [rcx]
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea si, qword ptr [rdx]
jns .bb_0.2
jmp .exit_0
.bb_0.2:
add al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
