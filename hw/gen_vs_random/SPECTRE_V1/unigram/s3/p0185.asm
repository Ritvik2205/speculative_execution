.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not rax
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
imul rdi
and rsi, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rsi]
sbb cl, cl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
adc rbx, rax
cmp rdx, rdi
and rdi, 61
and rdi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rcx]
cmovno bx, dx
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], ax
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], al
and rax, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rax]
cmp dl, bl
btr ax, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
