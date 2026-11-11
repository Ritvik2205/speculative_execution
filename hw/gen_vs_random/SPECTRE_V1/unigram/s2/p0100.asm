.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 18
movzx esi, sil
and rbx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
movzx esi, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rcx]
movzx cx, cl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
setle al
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], cl
sub ax, -16648
add edx, 100
nop
imul esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
