.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, -36 # instrumentation
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], esi
lea bx, qword ptr [rsi]
test rdi, rbx
sub al, sil
jmp .bb_0.1
.bb_0.1:
test dil, -126
cmp al, bl
and rcx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
add al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
