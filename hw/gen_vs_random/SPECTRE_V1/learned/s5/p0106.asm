.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rsi
mul rcx
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
sub al, cl
cmp al, dl
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 0
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], cl
inc cl
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
