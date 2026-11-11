.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 36
xor rdi, -80
sub al, -3
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
jp .bb_0.2
jmp .exit_0
.bb_0.2:
dec ecx
cmp bl, 123
add al, -80
sub dl, 41
sbb bl, sil
and rcx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
