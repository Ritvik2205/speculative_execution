.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
sbb bl, sil
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
xor al, 78
add dl, bl
jmp .bb_0.1
.bb_0.1:
js .bb_0.2
jmp .exit_0
.bb_0.2:
sub sil, bl
bt eax, edx
cmp sil, 25
add cl, bl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dil
or cl, dil
add al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
