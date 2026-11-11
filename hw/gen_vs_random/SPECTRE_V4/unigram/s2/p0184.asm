.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and eax, esi
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], rcx
mov cl, cl
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 43
and rsi, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
xor bx, ax
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], 59
cmovns ax, di
and rcx, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rcx]
add ebx, -57
btc bx, di
and bx, 13
or ebx, edx
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 69
xor di, 54
add dl, 122 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
not ecx
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 75
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 11
movzx ebx, dil
sub di, 9
cmovno rax, rdi
imul ebx, eax, -112
mov al, dil
mov dil, sil
cmovp eax, esi
xor edi, 127
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dil
adc ebx, -55
and rdx, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rdx]
add dil, 42 # instrumentation
movsx rcx, dil
and rdx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], edx
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rdx, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rdx]
cmp dl, dl
cmovnz esi, edi
and rsi, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rsi]
test dl, -102
and sil, -84
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], ax
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], ax
mov si, bx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
bt ebx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
