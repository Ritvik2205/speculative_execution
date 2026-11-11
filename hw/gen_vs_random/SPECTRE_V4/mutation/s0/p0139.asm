.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
add bl, -18 # instrumentation
mov rcx, rsi
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -83
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 3
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 48
cmp al, 19
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
xor bl, dl
test dl, dl
movzx eax, ax
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
btc rbx, rcx
sub dl, dl
cmovnl si, ax
test bl, 24
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], 108
bt eax, 84
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
sbb dl, bl
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
sub eax, -523763262
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
add dl, 31 # instrumentation
cmovnl cx, cx
add dl, 56 # instrumentation
cmovle rbx, rdx
sub ax, si
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 99
cmovs ebx, eax
sub ecx, esi
btc rdi, 167
and rsi, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
and rax, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rax]
inc esi
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
mul edx
cmp al, 19
movzx eax, sil
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 67
add bl, -109 # instrumentation
sbb eax, -2052726562
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], si
add cl, -37 # instrumentation
adc eax, -39
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
