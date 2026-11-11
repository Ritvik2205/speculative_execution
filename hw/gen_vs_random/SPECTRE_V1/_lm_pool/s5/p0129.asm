.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], -126
xor cl, al
lea ax, qword ptr [rcx + rdi + 34958]
cmp cl, dil
mov dil, cl
cmp cl, bl
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and cl, cl
and dl, -109
xor al, dl
add bx, -65
and rcx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rcx]
add cl, dl
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
