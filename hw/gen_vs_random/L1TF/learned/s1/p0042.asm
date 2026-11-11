.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 46
and rdi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdi]
sbb al, bl
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
lea cx, qword ptr [rbx]
sub al, 9
inc cl
mov dl, bl
add ax, 23614
and dil, bl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
add cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
