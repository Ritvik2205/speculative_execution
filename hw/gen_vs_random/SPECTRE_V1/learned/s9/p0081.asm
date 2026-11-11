.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 113
lea ax, qword ptr [rax]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 47
test bl, -8
add al, 3
and rdi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdi]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
sub di, 50
neg rbx
and rax, 2134929425
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
