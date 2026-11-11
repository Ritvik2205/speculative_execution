.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt eax, 103
and si, dx
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -1481110162
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], ecx
sub ax, 25338
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], 71
sub rdx, rdx
mov eax, -1056201206
and rdx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], esi
adc al, dl
or edx, edi
or rax, 1042095162
adc bl, al
test al, 18
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], bl
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rdi
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rbx
xor bx, 106
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx
and rbx, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rbx]
movzx rdi, bx
and rdx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdx]
sub eax, -494922880
cmp dl, dl
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rax]
xor eax, 167244411
cmp al, 114
and rcx, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rcx]
sbb sil, -11
add eax, 1017938146
and rax, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rax]
xor al, al
xor dx, 7
and rcx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rcx]
add cl, 53 # instrumentation
cmovnbe esi, edx
and rsi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rsi]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
add bl, 76 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdx]
inc edi
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edx
sub bl, -98
cmovle rdx, rdx
adc cl, al
and rdi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
