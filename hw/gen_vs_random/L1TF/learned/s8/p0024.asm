.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -57 # instrumentation
and rcx, 0b1111111111111 # instrumentation
movzx rdx, byte ptr [r14 + rcx]
cmp rdi, 53
and rbx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rbx], 90
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 7
sub rax, -1628299544
jmp .bb_0.1
.bb_0.1:
add al, -48 # instrumentation
and rbx, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rbx]
and sil, cl
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
and rdi, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
