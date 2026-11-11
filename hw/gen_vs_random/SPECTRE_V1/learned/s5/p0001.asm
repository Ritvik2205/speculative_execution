.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 92
sbb sil, -78
sub al, bl
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
jb .bb_0.2
jmp .exit_0
.bb_0.2:
lea dx, qword ptr [rax + rdi]
adc al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
