.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul cl
dec cl
bt dx, 213
xor cl, dil
cmovnz rdi, rdx
and rbx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rbx]
dec rax
and rbx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], sil
xor bl, -126
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dil
cmovs di, ax
btr rcx, 134
xchg rax, rdx
cmp bl, -16
and rdx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rdx], edx
test al, -85
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 71
and rcx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], eax
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], ax
btc rdx, 130
mul rbx
cmp al, 115
btr rax, rdx
test edi, -1380439873
xor dl, -66
add bl, -74 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
mul cx
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -2089960014
bts ecx, ecx
and rsi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rsi]
and bl, sil
bt rax, 59
bt rbx, 62
xor sil, sil
or cl, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv cl
and rcx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rcx]
add cl, -9
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], bl
cmovnz rsi, rsi
or cx, ax
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rsi]
cmp rdi, 28
and rsi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
