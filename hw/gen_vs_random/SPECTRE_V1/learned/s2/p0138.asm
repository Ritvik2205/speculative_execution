.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, -1
cmp rax, -72548874
sbb dil, cl
cmp dil, -78
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
mov bl, sil
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -42
xchg rdx, rdi
and rbx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rbx]
sbb cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
