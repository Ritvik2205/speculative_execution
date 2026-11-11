.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rsi
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
jl .bb_0.2
jmp .exit_0
.bb_0.2:
and bl, -65
sub cl, bl
or ax, -114
and dl, al
sub cl, dil
imul rbx, rcx, 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
