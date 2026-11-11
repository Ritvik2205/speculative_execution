.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
mul rcx
sub ax, 124
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], dil
setz dl
add cl, dl
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], dil
xchg al, dil
lea rax, qword ptr [rbx + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
