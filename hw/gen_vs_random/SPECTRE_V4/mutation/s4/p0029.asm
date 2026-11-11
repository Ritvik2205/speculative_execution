.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp al, 19
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
add bl, -109 # instrumentation
sbb eax, -2052726562
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
bt eax, 84
sub ax, si
sub eax, 2
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
movzx eax, ax
xor bl, dl
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 3
btc rdi, 167
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], 108
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
add dl, 56 # instrumentation
cmovle rbx, rdx
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 99
btc rbx, rcx
add cl, -37 # instrumentation
adc eax, -39
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 48
add bl, -18 # instrumentation
mov rcx, rsi
mul edx
and rsi, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
sub dl, dl
add dl, 31 # instrumentation
cmovnl cx, cx
sbb dl, bl
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
cmovs ebx, eax
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], si
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 67
inc esi
test bl, 24
and rax, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
test dl, dl
sub ecx, esi
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
cmp al, 70
cmovnl si, ax
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -83
movzx eax, sil
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
