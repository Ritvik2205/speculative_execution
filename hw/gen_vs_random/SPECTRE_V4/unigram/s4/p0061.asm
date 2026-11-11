.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
movsx edx, byte ptr [r14 + rcx]
sub rdx, rcx
sub di, si
sbb ax, cx
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], -108
cmovbe rdi, rdx
bswap rdi
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
xor ax, -22861
and rax, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
adc cl, dil
btr di, bx
and rdi, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdi]
mov al, 82
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
btr ax, si
sub di, 9
cmovnl cx, si
xchg ebx, edi
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdx], 88
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], -1928332684
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
sub esi, eax
and rsi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rsi], rsi
and rdx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
sub rsi, -89
cmp di, dx
mov al, 90
and rsi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rsi]
cmp dil, dl
mov cl, al
btr rax, rax
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 92
neg si
mul edx
add dl, -58 # instrumentation
xchg bx, si
cmp dx, -26
cmovbe bx, ax
xor dx, di
and rsi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], ebx
and rbx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
