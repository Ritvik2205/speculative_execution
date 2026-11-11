.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub eax, -523763262
btc rdi, 167
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
inc esi
cmovnl si, ax
btc rbx, rcx
sub ecx, esi
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
mul edx
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], 108
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
xor bl, dl
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 48
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
add bl, -18 # instrumentation
mov rcx, rsi
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 67
sbb dl, bl
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -83
cmp al, -23
movzx eax, ax
sub dl, dl
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], si
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
add bl, -109 # instrumentation
sbb eax, -2052726562
test bl, 24
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx]
sub ax, si
test dl, dl
add dl, 31 # instrumentation
cmovnl cx, cx
cmp al, -23
add cl, -37 # instrumentation
adc eax, -39
cmovs ebx, eax
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 3
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 99
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
and rax, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rsi]
movzx eax, sil
add dl, 56 # instrumentation
cmovle rbx, rdx
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
bt eax, 84
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
