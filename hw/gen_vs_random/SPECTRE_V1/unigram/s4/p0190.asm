.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, -91
add sil, -46 # instrumentation
cmovbe rsi, rdi
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], 1
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rdx
and rax, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], al
imul ax, dx, 53
add cl, 43 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 20
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rsi]
sub dl, bl
movzx eax, di
movsx ecx, dx
and rcx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
