.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rbx]
add cl, 101 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdi]
imul edi, edi
adc bl, -58
sbb cl, bl
and rbx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rbx]
add al, 111 # instrumentation
cmovno eax, ecx
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
mov rdi, -7956777892145474940
and rax, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rax]
add si, 81
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
and rdx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rdx]
or rcx, rbx
add al, bl
and rbx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rbx]
xor dl, dl
and rsi, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rsi], edi
or di, ax
and rdx, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 41
mul ax
and rax, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
not word ptr [r14 + rdx]
and dl, dl
or cl, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv cl
sub rdi, 105
or bl, bl
sub ecx, -107
xor ax, -22861
sub dl, cl
and rax, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rax]
add cl, -23 # instrumentation
cmovno edi, edx
and rax, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rax]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edx
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
movsx edi, di
or al, 1 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
or sil, -47
and rsi, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rsi]
xor dil, dil
bts edx, edx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
or bl, 61
not rax
imul bx, cx, 46
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
