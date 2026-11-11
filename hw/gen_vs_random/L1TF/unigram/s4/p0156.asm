.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb al, al
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 54
add cl, 95 # instrumentation
mov dil, cl
movzx edx, dil
xor bx, 67
and rsi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rbx]
xchg dl, cl
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
add bl, 13 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
bt cx, ax
and rcx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rbx]
sbb si, 15
xor al, al
mov al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
