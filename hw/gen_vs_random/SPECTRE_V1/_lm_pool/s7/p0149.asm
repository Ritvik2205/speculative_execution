.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -116
imul al
xchg dl, bl
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], -1
mov cl, bl
and rcx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rcx]
lea cx, qword ptr [rdx]
add al, al
test bl, -8
adc al, -82
lea cx, qword ptr [rax + rsi + 14]
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
