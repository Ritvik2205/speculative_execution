.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -17 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 93
cmp sil, 127
mov al, cl
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rdi
cmovs ebx, ecx
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -21
and rdx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], bx
and eax, edx
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
adc rcx, rdx
mov eax, -1056201206
or rdi, rdi
xor cl, -15
and rcx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rcx]
movzx edi, dx
and rdi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdi]
btr edx, 160
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ecx
adc al, -59
and rax, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rax]
add bl, 71 # instrumentation
adc di, ax
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], esi
and rsi, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rsi]
cmp dil, bl
and rsi, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rsi]
or al, bl
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rax
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 40
and rax, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rax]
cmp dl, al
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], ax
xor al, 23
and rdx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdx]
sbb eax, edx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
and sil, al
and rsi, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], edx
bts di, 72
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
add dl, 45 # instrumentation
cmovbe rcx, rsi
not rbx
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], ecx
xor edi, 127
and rax, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
