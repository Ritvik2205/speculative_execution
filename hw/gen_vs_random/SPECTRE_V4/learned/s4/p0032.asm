.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rsi
sub ax, dx
cmp cl, sil
cmp ax, 28568
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
or sil, -47
sub al, -84
adc bl, cl
sub al, cl
or bl, dl
and eax, -784085938
add cl, sil
or al, -47
sbb al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
