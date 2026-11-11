.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], -103
and rcx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], ax
xor ax, 0
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 11
xor cl, 89
imul di, cx, 28
cmovl ebx, edx
sbb dil, 43
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
movzx rcx, sil
imul di, ax, 96
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rdx
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 6
not edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
