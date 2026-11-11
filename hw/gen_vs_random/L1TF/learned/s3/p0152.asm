.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
lea edx, qword ptr [rcx]
sub dil, -70
lea cx, qword ptr [rcx + rax]
jmp .bb_0.1
.bb_0.1:
or cl, sil
cmovb di, cx
and al, -68
and rax, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 86
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
