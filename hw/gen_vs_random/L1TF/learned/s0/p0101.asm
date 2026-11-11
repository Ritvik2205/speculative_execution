.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
or al, -48
test dl, 84
sbb cl, al
cmp al, 56
jmp .bb_0.1
.bb_0.1:
lea bx, qword ptr [rbx]
and dl, 59
jl .bb_0.2
jmp .exit_0
.bb_0.2:
add al, 117
and al, cl
lea rbx, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
