.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 86 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rbx]
sbb cl, al
sub dl, -34
lea eax, qword ptr [rbx]
add dl, 22
and dl, dl
bt esi, edx
and rdi, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdi], 86
and rax, 1163013815
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
