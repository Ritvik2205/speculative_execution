.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdx, qword ptr [rdx]
add al, 10
and rbx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rbx]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jb .bb_0.2
jmp .bb_0.3
.bb_0.2:
jl .bb_0.3
jmp .exit_0
.bb_0.3:
cmp cl, 91
add cl, al
xor bl, cl
and dl, bl
and rcx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
