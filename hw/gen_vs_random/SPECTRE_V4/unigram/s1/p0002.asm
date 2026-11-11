.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, cl
and rdi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdi]
mul al
xor cl, -15
sub esi, -69
xor bl, bl
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 72
sub dl, 107
and rcx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rcx], 62
and cl, sil
and rcx, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rcx]
cmp al, -116
mov dl, cl
or rdi, 43
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rdi]
cmovnb esi, edi
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 41
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], ax
and rsi, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rdx], dx
or cx, 0b1000000000000000 # instrumentation
bsr di, cx
and rdx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdx], 9
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], -12
sbb sil, sil
and si, -74
cmovnl esi, ecx
add cl, 101 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rcx]
sub al, dl
imul bl
and rdx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdx]
dec bx
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
sub si, -92
adc dil, 38
and rdx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], dx
add cl, -58 # instrumentation
cmovnz edx, ecx
and dil, dil
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], ebx
cmovnb dx, bx
add cl, 111 # instrumentation
cmovnle dx, cx
bts rsi, 236
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
