.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rcx
adc bx, bx
movzx ecx, dl
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], esi
and rbx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rbx]
xchg al, sil
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 13
add cl, 119 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rsi]
xchg ebx, esi
add cl, 76
test al, al
sub edx, edi
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 94
mov cl, sil
cmovb cx, cx
bts esi, 241
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
xor dl, cl
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 1
cmovnb ax, ax
cmovs eax, edx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rcx]
xor al, dl
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 29
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], eax
sbb cx, 33
or esi, 4
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
sub eax, -523763262
cmp cx, 81
add dil, 82
xor cx, si
and rdx, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rdx]
cmovo rax, rax
xor bl, bl
and rbx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rbx]
add di, -74
add al, 5
cmp dl, 20
dec ax
test dx, 89
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rcx
test edx, 573099753
test dil, al
add sil, 26
imul rbx, rdx
sbb sil, al
and rcx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
