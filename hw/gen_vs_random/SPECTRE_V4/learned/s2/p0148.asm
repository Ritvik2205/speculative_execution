.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, -23
sub dil, 65
sbb dil, 82
or bl, cl
and rax, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rax]
sub dil, -40
and bl, dil
sub al, 0
inc cl
xchg cl, dil
sbb bl, cl
cmovnbe eax, edx
or dx, 95
and ax, 16313
cmp dil, 101
xor ax, 30500
sbb bl, cl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
sub bl, 66
xor al, sil
and dil, dl
add dl, dil
cmp dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
