.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdi]
add bl, dl
jmp .bb_0.1
.bb_0.1:
lea cx, qword ptr [rbx + rdx + 75]
sub bx, 2
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 74
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 5
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
sub rax, -15
and rax, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rax]
sub dil, cl
test cl, 93
btr ebx, 54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
