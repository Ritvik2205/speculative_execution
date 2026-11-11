.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea bx, qword ptr [rbx]
test al, 84
and cl, sil
and sil, al
and rdx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rdx]
mov dl, bl
adc dil, 36
and al, cl
xchg cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
