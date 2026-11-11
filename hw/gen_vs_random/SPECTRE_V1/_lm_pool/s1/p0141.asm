.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, 98
and sil, dl
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], rcx
add bl, -95
test dil, -116
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rcx]
sub bl, al
jle .bb_0.1
jmp .exit_0
.bb_0.1:
test dil, -116
sbb cl, 105
lea ax, qword ptr [rdi + rcx]
xchg sil, bl
sbb bl, cl
cmp cl, al
lea ax, qword ptr [rdi + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
