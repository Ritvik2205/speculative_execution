.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rbx
and rdi, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rdi]
bswap rdx
xor ax, di
or rdi, -41
sub rax, 714283065
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], 99
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edi, eax
and rdi, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rdi]
xchg ax, di
and rdi, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rdi]
or sil, -47
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], ax
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], -97
adc cl, -86
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 68
add dl, 92 # instrumentation
cmovnl rbx, rdx
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], 28
and rdi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], ax
and rsi, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rsi]
cmp sil, al
xor cl, al
cmovns ax, cx
and rbx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
and rsi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rsi], 62
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], rax
cmp dx, -26
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], rsi
and rdi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdi]
add cl, -20 # instrumentation
adc dl, al
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
xor bl, 27
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dil
xor dl, -123
and rax, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rax]
xor bl, 126
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], al
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 83
dec cl
add al, 66 # instrumentation
cmovp ebx, ebx
and rbx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rbx]
not dx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
btc rcx, rbx
sbb dl, al
add dl, 87 # instrumentation
cmovz ecx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
