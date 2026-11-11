.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp al, -52
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rax]
sub dl, dl
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], si
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -83
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
sub eax, 2
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 48
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], 108
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
cmp al, 19
sbb dl, bl
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
sub ecx, esi
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
sub ax, si
xor bl, dl
test dl, dl
cmovnl si, ax
add bl, -18 # instrumentation
mov rcx, rsi
movzx eax, ax
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 99
inc esi
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
add bl, -109 # instrumentation
sbb eax, -2052726562
cmovs ebx, eax
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
test bl, 0
bt eax, 84
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
add dl, 56 # instrumentation
cmovle rbx, rdx
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
add cl, -37 # instrumentation
adc eax, -39
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx]
btc rdi, 167
movzx eax, sil
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 67
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 3
and rsi, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rsi]
btc rbx, rcx
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
add dl, 31 # instrumentation
cmovnl cx, cx
mul edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
