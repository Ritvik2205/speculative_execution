.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx edx, cx
cmp eax, 123533400
and bl, cl
xor bl, -5
sub al, 9
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 7
xchg cl, sil
test cl, 74
jmp .bb_0.1
.bb_0.1:
lea rdi, qword ptr [rdx + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
