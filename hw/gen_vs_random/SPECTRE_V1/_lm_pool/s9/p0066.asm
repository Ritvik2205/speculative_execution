.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, 71
lea rdx, qword ptr [rcx]
sub al, -82
lea cx, qword ptr [rdx]
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
jns .bb_0.2
jmp .bb_0.3
.bb_0.2:
sub al, dil
mov bl, dl
lea si, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdx]
dec al
jmp .bb_0.3
.bb_0.3:
adc bl, 88
xor cl, cl
or dil, 98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
