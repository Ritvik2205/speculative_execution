.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dl
add bl, 70
add dl, 47
or esi, -74
and rdx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdx], 20
and rcx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rcx]
lea rdx, qword ptr [rcx + rdi + 77]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
or cx, 0b1000000000000000 # instrumentation
bsf di, cx
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
