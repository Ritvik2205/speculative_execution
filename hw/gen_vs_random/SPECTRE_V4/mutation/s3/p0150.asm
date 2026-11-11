.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
add dl, 56 # instrumentation
cmovle rbx, rdx
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 3
add bl, -18 # instrumentation
mov rcx, rsi
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
cmovs ebx, eax
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
mul edx
sub eax, -523763262
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], 108
test dl, dl
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
cmp al, 70
cmp al, 114
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
sub ecx, esi
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 67
sub ax, si
movzx eax, ax
btc rbx, rcx
btc rdi, 167
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
sbb dl, bl
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
test bl, 24
add dl, 31 # instrumentation
cmovnl cx, cx
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 48
add cl, -37 # instrumentation
adc eax, -39
and rax, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 99
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
and rsi, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rsi]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -83
xor bl, dl
movzx eax, sil
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
cmovnl si, ax
bt eax, 84
inc esi
add bl, -109 # instrumentation
sbb eax, -2052726562
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], si
sub dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
