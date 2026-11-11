.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -31
sub al, bl
and rax, 1713273566
adc al, sil
and ax, 32540
lea bx, qword ptr [rdi]
xor cl, al
cmp dl, cl
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
xchg cl, dil
lea esi, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
