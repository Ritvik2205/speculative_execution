.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnl si, ax
cmp al, -23
mul edx
test bl, 24
add dl, 31 # instrumentation
cmovnl cx, cx
add bl, -18 # instrumentation
mov rcx, rsi
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 67
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 99
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
sub dl, dl
bt eax, 84
add dl, 56 # instrumentation
cmovle rbx, rdx
sub ax, si
sub eax, -523763262
btc rdi, 167
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
btc rbx, rcx
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
inc esi
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 3
xor bl, dl
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
sub ecx, esi
test dl, dl
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], 108
sbb dl, bl
movzx eax, sil
add bl, -109 # instrumentation
sbb eax, -2052726562
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -83
and rsi, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rsi]
cmp al, 114
add cl, -37 # instrumentation
adc eax, -39
and rax, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], si
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
movzx eax, ax
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
cmovs ebx, eax
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 48
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
