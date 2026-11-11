.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 86 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rcx]
sbb dl, 127
sub cx, 48
mov cl, al
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
xchg cl, dl
jnbe .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
js .bb_0.3
jmp .exit_0
.bb_0.3:
lea edx, qword ptr [rdi]
adc dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
