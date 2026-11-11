.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 86 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rax]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
inc cl
and cl, dil
or cx, 79
js .bb_0.2
jmp .bb_0.3
.bb_0.2:
and al, -54
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], cl
sbb al, dl
and rbx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rbx]
lea cx, qword ptr [rdx + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
