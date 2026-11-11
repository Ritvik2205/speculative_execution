.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx eax, ax
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 67
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
test dl, dl
sub eax, -523763262
and rax, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 3
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], si
btc rdi, 167
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx]
movzx eax, sil
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
cmp al, 81
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rsi]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 99
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
add dl, 56 # instrumentation
cmovle rbx, rdx
mul edx
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 48
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
xor bl, dl
btc rbx, rcx
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -83
add bl, -109 # instrumentation
sbb eax, -2052726562
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
add bl, -18 # instrumentation
mov rcx, rsi
bt eax, 84
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
sub dl, dl
add cl, -37 # instrumentation
adc eax, -39
test bl, 24
cmovnl si, ax
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
sub ax, si
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
inc esi
cmovs ebx, eax
sbb dl, bl
cmp al, 19
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
sub ecx, esi
add dl, 31 # instrumentation
cmovnl cx, cx
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], 108
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
