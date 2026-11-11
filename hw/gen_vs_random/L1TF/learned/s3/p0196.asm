.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -44
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 22
and rax, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdx]
add dil, -7
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], -46
inc cl
and rax, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rax], 61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
