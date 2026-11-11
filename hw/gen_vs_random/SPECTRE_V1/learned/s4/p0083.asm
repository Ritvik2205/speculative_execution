.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 21 # instrumentation
adc cx, 92
cmp rdx, -19
test sil, 47
sub al, -82
add bl, cl
and bl, bl
and rcx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rcx]
sbb bl, dil
and eax, 933895314
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 4
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
