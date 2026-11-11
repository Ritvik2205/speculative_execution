.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 104 # instrumentation
mov ecx, 76
jle .bb_0.1
jmp .exit_0
.bb_0.1:
add sil, al
and rdi, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rdi]
not cl
test cx, 13
add al, al
sub rdx, 72
and rbx, rax
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
add sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
