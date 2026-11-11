.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
setno bl
cmp dil, -58
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
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
jns .bb_0.1
jmp .exit_0
.bb_0.1:
imul ax, dx, 74
add cl, 43 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 52
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
