.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], al
xor di, 93
and rdi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdi]
xor al, al
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], cx
and rcx, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rcx]
xor al, al
neg dl
jmp .bb_0.1
.bb_0.1:
add bl, 92 # instrumentation
sets bl
bts ebx, 74
and rax, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
sbb sil, -19
mov ebx, edi
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
