.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ax, al
neg si
cmp cx, 0
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 76
and rcx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rcx]
movsx rax, dx
add cl, -6 # instrumentation
cmovo rdi, rax
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rsi]
btc edi, 125
add dl, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rdx]
cmovnl dx, ax
cmovs rax, rdi
and eax, ebx
add dil, dil
add al, -79 # instrumentation
adc rdi, 76
and rbx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdi]
and ebx, -4
movsx cx, dl
btc eax, edi
cmovnz rbx, rax
and rsi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rsi], 29
or bl, 61
and cl, dl
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 2
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], sil
and di, dx
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -61
imul sil
bts cx, 135
add cl, 101 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ebx
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 4
imul al
sub bl, dl
add dl, 29 # instrumentation
cmovnl rax, rsi
and cl, dil
mov edx, -950755477
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], dl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 26
test al, -38
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
sbb di, -105
cmovnz rdx, rsi
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
