.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
sbb ecx, 73
lea bx, qword ptr [rcx]
cmovbe bx, dx
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], bl
and cl, 86
sbb dil, bl
sub al, 63
and rbx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
