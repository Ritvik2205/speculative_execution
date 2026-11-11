.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rax]
add eax, esi
add edi, 11
sbb eax, 2051746726
cmp al, 70
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 6
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 120
dec rcx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
add dl, 100 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rcx]
dec edi
movzx rax, sil
dec cx
add cl, -6 # instrumentation
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], cl
dec edi
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], -12
cmp eax, -92285311
add bl, bl
bts eax, 209
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], ecx
not si
and rdi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rdi], dx
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], bx
sub rsi, rax
test cl, -89
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
btc rbx, rdx
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], bx
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
xchg eax, ecx
add bl, 106 # instrumentation
cmovs ecx, ebx
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], sil
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
cmp bl, dl
add dil, cl
movzx edx, cl
and rdx, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rdx]
imul rdi
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 86
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
and rsi, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rsi]
mov bl, 25
imul cl
or al, 96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
