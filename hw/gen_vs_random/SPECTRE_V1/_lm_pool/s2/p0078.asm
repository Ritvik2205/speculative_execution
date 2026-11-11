.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 96
lea ax, qword ptr [rdi]
sbb bl, sil
and al, -54
lea ebx, qword ptr [rcx]
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
adc bx, 53
and rcx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rcx]
xchg al, bl
sbb dil, cl
jmp .bb_0.1
.bb_0.1:
test cl, -62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
