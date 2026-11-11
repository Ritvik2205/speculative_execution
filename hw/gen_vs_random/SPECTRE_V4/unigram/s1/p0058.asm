.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rsi]
cmovbe edi, esi
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rax]
cmp eax, esi
and sil, dl
adc dl, al
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], cl
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], cl
and rcx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rcx]
add al, 42 # instrumentation
movsx rdx, al
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], eax
test ax, -18054
cmovbe ax, bx
sbb di, cx
cmovno di, di
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], eax
and rcx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rcx]
movzx ebx, si
sbb al, -43
and dx, cx
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], al
cmovbe bx, ax
and rsi, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rsi]
test cx, 19367
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], ax
and rdi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
cmovnb rsi, rax
and rbx, 0b1111111111111 # instrumentation
adc edi, dword ptr [r14 + rbx]
sub eax, -638345541
sbb dil, al
and rcx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -2089960014
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rax
cmovl rdi, rax
test dil, sil
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], sil
add bl, 91 # instrumentation
adc bl, al
and rax, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rax]
and ax, dx
test dl, -125
cmp al, 116
cmp bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
