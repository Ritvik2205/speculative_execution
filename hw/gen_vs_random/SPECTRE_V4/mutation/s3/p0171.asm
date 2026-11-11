.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp al, -23
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
test bl, 0
cmp al, -52
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
cmovnl si, ax
add dl, 56 # instrumentation
cmovle rbx, rdx
test dl, dl
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx]
add bl, -109 # instrumentation
sbb eax, -2052726562
xor bl, dl
movzx eax, ax
and rax, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
mul edx
bt eax, 84
btc rdi, 167
and rsi, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
inc esi
sbb dl, bl
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 67
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 48
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
sub eax, 2030845821
sub dl, dl
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 99
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], 108
add cl, -37 # instrumentation
adc eax, -39
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], si
cmovs ebx, eax
add bl, -18 # instrumentation
mov rcx, rsi
sub ecx, esi
btc rbx, rcx
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 3
sub ax, si
add dl, 31 # instrumentation
cmovnl cx, cx
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -83
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
movzx eax, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
