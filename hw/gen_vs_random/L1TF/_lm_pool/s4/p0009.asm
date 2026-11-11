.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
lea bx, qword ptr [rdi]
test dl, bl
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rbx]
sbb dl, cl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdi]
test eax, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
