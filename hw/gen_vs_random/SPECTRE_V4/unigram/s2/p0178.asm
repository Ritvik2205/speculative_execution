.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 125
and rbx, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], eax
bt ax, 40
and ax, 35
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 5
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
add dl, -10 # instrumentation
cmovnbe edx, eax
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
not bx
sbb dil, 91
xor dl, 20
adc dl, al
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], rbx
and rsi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rsi]
cmp edx, 12
and rsi, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rsi]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdi
xor sil, al
bts ebx, 22
add ax, 28666
xor eax, 181978569
cmp cl, dl
bswap rdx
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle esi, eax
xor rax, rcx
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
add bl, -72
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rbx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
cmp al, 114
imul rdi
cmp al, 70
not rbx
mov cl, cl
or cx, 63
and rdi, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rcx]
cmovnb edx, ebx
and rcx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], ebx
cmovnle cx, ax
and rax, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rax]
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
test al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
