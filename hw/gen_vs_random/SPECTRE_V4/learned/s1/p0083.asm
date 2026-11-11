.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 5
mul ax
test dx, bx
adc bl, cl
cmp dil, al
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
xor dx, di
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], 52
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 24
and rdi, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rdi]
add sil, 26
add al, -117 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
xor edi, 10
adc rax, 1542637830
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
xor al, 102
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], di
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -64
bswap rbx
test bl, sil
mov rsi, rbx
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdx]
and bl, 26
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
add bl, -10 # instrumentation
cmovnbe ebx, edx
cmovb edx, ecx
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], cx
neg ebx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 45
and rbx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rbx]
cmp dil, dl
cmovle cx, si
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], di
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rsi]
cmovnbe ax, bx
xor ax, 28088
cmp al, 19
xor esi, eax
adc al, 36
and rax, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
