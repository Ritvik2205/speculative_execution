.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul edx
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -83
add bl, -18 # instrumentation
mov rcx, rsi
sub dl, dl
btc rdi, 167
sbb dl, bl
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], si
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
sub ecx, esi
add dl, 31 # instrumentation
cmovnl cx, cx
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
cmp al, -52
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
movzx eax, sil
cmovnl si, ax
add dl, 56 # instrumentation
cmovle rbx, rdx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
add cl, -37 # instrumentation
adc eax, -39
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
cmp al, 114
and rax, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rax]
add bl, -109 # instrumentation
sbb eax, -2052726562
sub eax, -523763262
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 3
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 99
bt eax, 84
movzx eax, ax
test bl, 0
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], 108
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rsi]
btc rbx, rcx
test dl, dl
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
xor bl, dl
inc esi
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 48
cmovs ebx, eax
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
sub ax, si
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 67
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
