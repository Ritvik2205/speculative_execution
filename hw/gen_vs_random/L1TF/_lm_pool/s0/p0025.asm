.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dx, 33
test cl, 30
test cl, 88
adc bl, 86
cmp sil, -11
cmp cx, 44
lea rbx, qword ptr [rdi + rdx + 44]
and rdi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
xor di, 8
and rcx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
