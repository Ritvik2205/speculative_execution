.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bx, 24072
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], -126
and rbx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rbx], ax
btc edi, ecx
imul esi, eax
add al, 68 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rbx]
cmovp eax, ecx
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], eax
and rsi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rsi], si
and rax, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rax]
adc rcx, -99
and rax, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rax], 54
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], 88
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1308203108
cmovnb eax, ecx
sbb bl, dl
and rbx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rsi
add bl, -84 # instrumentation
cmovb ax, cx
and dl, -104
xor sil, 78
add al, -79 # instrumentation
adc rdx, 12
movsx rsi, cx
cmovo si, dx
cmp edi, 3
cmp sil, -100
bt ax, 248
and rdi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dl
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
or eax, -1213318393
or sil, sil
and al, sil
and rsi, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rsi], 70
add dl, -79 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rbx]
imul sil
btc ecx, eax
xor si, -73
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], al
and rdx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdx]
cmp dx, 58
and rbx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
