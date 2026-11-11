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
sub eax, 2
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
cmp al, 114
cmp al, 81
movzx eax, ax
cmovnl si, ax
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 48
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
sub cl, 116
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 439393806
add sil, 110
sub dl, al
add rdi, -94
and bl, -63
xor cl, -54
neg ebx
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
imul dx
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rcx]
add al, -75 # instrumentation
adc al, 79
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
xor al, -2
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
neg rbx
xor ax, 25554
cmovle rdi, rsi
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], di
or eax, -1434249782
movzx bx, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
