.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 81
cmp edx, 44
sub ax, -15315
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
cmp dil, -78
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
sub dl, bl
add ecx, 52
add eax, 1518653812
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
