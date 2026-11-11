.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], bl
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
add cl, -103 # instrumentation
cmovnz cx, ax
mov si, dx
or rdi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rdi
and rbx, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], 87
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], cl
and rbx, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
movzx ebx, bx
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 32339
setle bl
setnz sil
add bl, -113 # instrumentation
and rax, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rax]
cmovnle rdi, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
