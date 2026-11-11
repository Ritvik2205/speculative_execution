.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rbx
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, cl
and rdx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 28
and al, -54
xor dil, cl
add dil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
