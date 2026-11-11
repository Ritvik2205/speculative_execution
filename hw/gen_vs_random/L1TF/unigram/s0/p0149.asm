.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rcx], 21
cmp rdi, rcx
and rbx, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rbx]
cmovnbe edi, edx
add bl, -58 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
cmovnle rax, rax
and rax, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
lea bx, qword ptr [rdi]
and rcx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rcx]
lea esi, qword ptr [rsi]
add cl, -110 # instrumentation
setbe al
sub rcx, rdx
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
