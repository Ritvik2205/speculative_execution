.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
sub sil, dl
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 2
inc bl
sbb dl, cl
add al, 10
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and dl, dl
cmp dil, -78
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rsi]
sub al, -82
sub sil, -18
or sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
