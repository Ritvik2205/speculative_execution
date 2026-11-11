.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdx, qword ptr [rdx]
or ecx, 52
sub rbx, rdi
add ax, 8031
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
sub ax, 124
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], bl
add dl, cl
mov cl, dil
and rcx, -29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
