.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -37 # instrumentation
adc eax, -39
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
add bl, -109 # instrumentation
sbb eax, -2052726562
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
sbb dl, bl
sub eax, 2030845821
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
inc esi
test dl, dl
cmovs ebx, eax
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], 108
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 99
bt eax, 84
sub ax, si
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
add dl, 31 # instrumentation
cmovnl cx, cx
cmp al, 70
cmp al, -23
and rbx, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
movzx si, byte ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 48
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -83
mul edx
imul si, bx, -16
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
add ebx, 3
add bl, -18 # instrumentation
mov rdx, rdi
cmovnbe rax, rdx
and bl, dl
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rbx], ecx
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], sil
and rcx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
add ebx, ecx
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 97
add dl, 56 # instrumentation
cmovle rbx, rdx
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 3
and rax, 53
and rax, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rsi]
sub dl, dl
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -93
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
