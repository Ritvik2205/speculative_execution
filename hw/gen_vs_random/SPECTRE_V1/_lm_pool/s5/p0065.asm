.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rbx]
lea cx, qword ptr [rdx]
sub dil, bl
and rdi, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdi], 40
jb .bb_0.1
jmp .exit_0
.bb_0.1:
sub cl, bl
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
cmp sil, 25
mov sil, al
sbb edx, 105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
