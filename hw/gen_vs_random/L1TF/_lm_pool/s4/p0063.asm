.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc bl
and si, 38
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
xor cl, 89
add ax, 23614
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
sub al, cl
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
and sil, -90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
