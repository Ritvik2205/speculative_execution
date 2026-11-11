.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, dil
and rcx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rcx]
movsx ecx, cx
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
xor rcx, -111
adc rax, rbx
and rdx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rcx]
dec ecx
sbb al, -39
and rbx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rbx]
and cx, -117
btc ebx, 25
cmovnz rcx, rdx
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
xor cl, -101
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], edi
imul dx, ax
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 6
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -74
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -86
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
or cl, 83
and rdx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rdx]
cmp al, dil
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], ebx
add bl, 54
cmovnb edi, eax
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rsi
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], 62
test dx, 28394
and rax, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rsi]
movsx eax, ax
sbb dx, 2
and rsi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rsi]
and dil, -61
or edx, -118
mov cl, -38
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], al
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], -225234694
and rcx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], sil
and rsi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rsi]
bt rsi, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
