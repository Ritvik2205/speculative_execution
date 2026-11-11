.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], cx
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rsi
mov eax, eax
bts rdi, 23
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
xor rax, -224991767
add dil, -40 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], sil
movsx rcx, bx
and dil, dl
cmp cl, -105
dec sil
cmovnle ebx, edi
add dl, -25 # instrumentation
cmovs rcx, rbx
movsx bx, al
xor rbx, rax
and cl, 126
and dl, al
and rbx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr si, word ptr [r14 + rax]
cmovs rdi, rax
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], si
mov bx, cx
add rdi, 111
and rbx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rbx]
and cl, -128
movzx di, dl
and rax, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rax]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 0
cmovb di, cx
mov rdx, rdi
and rcx, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], dl
and rcx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rcx]
dec cl
or eax, -1341747033
not sil
cmovp esi, esi
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], 94
add bl, -13 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdi]
or al, -90
sbb ecx, edx
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
