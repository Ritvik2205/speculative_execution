.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], -126
sub dl, cl
mov al, dl
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], -28
cmp al, -77
add al, 18
lea dx, qword ptr [rbx + rsi]
xchg rdx, rbx
test cl, -120
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
