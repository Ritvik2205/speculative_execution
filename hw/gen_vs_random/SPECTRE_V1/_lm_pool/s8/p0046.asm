.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdx]
add al, cl
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
test sil, 13
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and al, bl
cmp dil, -58
sub eax, -882981501
lea cx, qword ptr [rdi + rbx + 48694]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
