.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ebx
inc rax
bt ebx, 45
sub al, dl
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
lea rdx, qword ptr [rbx + rax + 70]
xor cl, bl
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], sil
add rdi, 62
xor al, dil
sbb cl, bl
sbb dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
