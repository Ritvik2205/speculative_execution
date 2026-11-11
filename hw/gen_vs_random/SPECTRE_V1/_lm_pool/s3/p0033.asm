.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], cx
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], bl
cmovnz rbx, rax
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 913863268
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
test dil, -116
jmp .bb_0.1
.bb_0.1:
jle .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
