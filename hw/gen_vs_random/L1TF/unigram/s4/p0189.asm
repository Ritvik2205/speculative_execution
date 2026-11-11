.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
not al
and rdi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rcx], 61
imul ax, si
mov cl, cl
and rax, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
cmovnb ax, di
cmp rdi, rdi
lea edi, qword ptr [rdi + rsi]
mov cl, 20
or al, -48
lea ax, qword ptr [rdx + rbx]
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 0
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rbx
sbb sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
