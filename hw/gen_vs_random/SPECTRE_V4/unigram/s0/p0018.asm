.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 1 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rsi]
or ax, 7381
imul bl
or cl, 66
and ebx, -122
btc rdx, rax
add al, 7 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dil
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], al
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], -127
and rdx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdx]
btr cx, ax
add al, 20 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rbx]
cmp rbx, -3
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], 76
xor rcx, -111
btr rax, 187
cmovb rbx, rbx
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
mov al, al
and rdx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rdx]
add al, -7 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 7
or di, 2
add cl, -6 # instrumentation
cmovo rdx, rcx
mov bl, dil
imul dl
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], dl
and si, -74
adc bx, 52
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], al
cmovo dx, si
imul rsi, rsi
and rcx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rsi]
bswap ebx
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 112
adc al, dil
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rax]
mov bl, cl
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rdi
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], -73
and rdi, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rdi]
cmp dil, -29
cmp rax, 2052654950
or dl, dil
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
