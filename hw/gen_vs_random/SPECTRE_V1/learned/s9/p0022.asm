.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], bx
or eax, 1276549484
setz al
or al, 100
add sil, -68
test cl, -62
xchg sil, cl
bt ecx, edx
lea edx, qword ptr [rax]
add al, -72
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], al
add cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
