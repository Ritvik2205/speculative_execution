.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 67 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdx]
sbb al, dl
sub al, 63
xor bl, -38
and rcx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rcx]
add dl, 47
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], al
js .bb_0.1
jmp .exit_0
.bb_0.1:
or edx, 47
and ax, -22629
and dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
