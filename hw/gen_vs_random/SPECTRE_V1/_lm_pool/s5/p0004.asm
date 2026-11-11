.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rax
lea dx, qword ptr [rdi]
mov al, cl
add rax, 913062684
sub al, dil
xor eax, -1721938664
test dil, -116
sub al, dl
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdx]
sub di, 36
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
