.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 99
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
inc esi
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], 108
test bl, 24
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 3
cmp al, 81
movzx eax, sil
sub dl, dl
btc rdi, 167
movzx eax, ax
cmp al, -52
bt eax, 84
sub ecx, esi
and rsi, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 67
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], si
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
btc rbx, rcx
cmovs ebx, eax
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
add bl, -109 # instrumentation
sbb eax, -2052726562
add cl, -37 # instrumentation
adc eax, -39
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 48
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
sbb dl, bl
xor bl, dl
sub eax, -523763262
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
cmovnl si, ax
add bl, -18 # instrumentation
mov rcx, rsi
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
sub ax, si
mul edx
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
add dl, 56 # instrumentation
cmovle rbx, rdx
and rax, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -83
test dl, dl
add dl, 31 # instrumentation
cmovnl cx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
