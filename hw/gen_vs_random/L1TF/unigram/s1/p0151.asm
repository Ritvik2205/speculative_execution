.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 41
cmovnp dx, si
and rax, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], ax
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
cmp bl, dil
test rsi, rax
movsx eax, dl
and rdi, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
movzx bx, al
and rdi, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 57
cmovno ebx, ebx
and rdi, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rdi]
imul esi, ecx
xor eax, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
