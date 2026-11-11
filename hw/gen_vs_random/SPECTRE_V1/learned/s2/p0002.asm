.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
adc bl, cl
js .bb_0.1
jmp .exit_0
.bb_0.1:
add sil, 2
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], di
and al, -54
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rbx], 38
sbb al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
