.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], 108
sub eax, 2030845821
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -83
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
movzx eax, ax
bt eax, 84
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 3
sub ax, si
sub ecx, esi
mul edx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
movzx eax, sil
test dl, dl
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 48
sbb dl, bl
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 99
add bl, -109 # instrumentation
sbb eax, -2052726562
add dl, 31 # instrumentation
cmovnl cx, cx
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
cmp al, 114
test bl, 24
btc rdi, 167
and rsi, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
add cl, -37 # instrumentation
adc eax, -39
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 67
add dl, 56 # instrumentation
cmovle rbx, rdx
cmovs ebx, eax
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], si
btc rbx, rcx
sub dl, dl
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
inc esi
add bl, -18 # instrumentation
mov rcx, rsi
xor bl, dl
cmovnl si, ax
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
cmp al, -52
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
