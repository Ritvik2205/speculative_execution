.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
btc rdi, 167
movzx eax, sil
and rsi, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
add cl, -37 # instrumentation
adc eax, -39
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 67
add dl, 31 # instrumentation
cmovnl cx, cx
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
test dl, dl
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
bt eax, 84
inc esi
cmovnl si, ax
sub ecx, esi
xor bl, dl
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 3
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 48
add dl, 56 # instrumentation
cmovle rbx, rdx
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx]
movzx eax, ax
add bl, -109 # instrumentation
sbb eax, -2052726562
btc rbx, rcx
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
cmp al, -23
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
sbb dl, bl
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
cmp al, 19
sub ax, si
cmovs ebx, eax
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 99
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], si
test bl, 0
sub dl, dl
mul edx
sub eax, 2030845821
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
add bl, -18 # instrumentation
mov rcx, rsi
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -83
and rax, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], 108
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
