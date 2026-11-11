.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb eax, edx
not rbx
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], cx
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdx]
add al, 122 # instrumentation
cmovns edi, ebx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
sbb sil, dil
sbb eax, ecx
add dil, -75 # instrumentation
adc dil, 3
test sil, al
add di, -74
cmovp dx, bx
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
sub ebx, edi
adc sil, bl
test si, bx
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edi
xor bl, al
not dx
dec al
cmovnb edx, esi
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
movzx dx, bl
and rbx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rbx]
add rcx, rdi
movzx rbx, cx
and rdx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdx]
btc dx, bx
cmovns bx, ax
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
test sil, bl
cmovnb edi, edx
and rcx, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rcx]
add al, cl
cmovno esi, ebx
cmovnl si, bx
adc al, sil
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 1
and rdx, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rdx]
movzx rax, dl
add cl, -117 # instrumentation
cmovs rax, rdx
test eax, -558243208
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], cl
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rdi, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rdi]
cmp bl, al
and rbx, 69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
