.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 6
mov sil, 21
add bl, 126 # instrumentation
cmovb esi, eax
adc al, al
cmovo eax, eax
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rsi], rdi
or rsi, -5
and ax, di
movzx rdx, bx
adc bl, 35
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
adc ax, 17267
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], rax
and rsi, 0b1111111111111 # instrumentation
add si, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rdx]
and rsi, 0
cmovno edi, esi
sbb bx, 87
cmovnz di, cx
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rdi]
adc dil, al
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rax
movsx rsi, di
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
add rax, 1049076260
cmovz cx, si
mov dl, al
and rdx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], 56
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
bt dx, si
and rax, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rax]
bts dx, bx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], bl
and rax, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rax], -91
add al, -82
xor sil, dl
adc cl, cl
xor dx, 7
adc rax, rbx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rax]
and eax, ebx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rax]
add ax, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
