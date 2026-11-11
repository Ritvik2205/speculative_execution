.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 68
cmp rsi, 22
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -18
and bl, dl
mov dl, al
imul bl
and rsi, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rsi]
xor bl, bl
mul dl
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], sil
btc rbx, rbx
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], 15
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], si
sub cl, al
sub bl, bl
cmp al, dil
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rcx]
and si, -70
and al, 41
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], eax
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], eax
xor dil, dil
btr di, 245
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], 57
inc ecx
add al, -82
and dil, cl
xchg al, cl
sbb rcx, -73
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], ax
or sil, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv sil
and rax, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
xor rcx, 112
movsx cx, cl
and rbx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], -77
test edi, -1380439873
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], -31
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
adc rsi, rcx
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 45
imul esi, edi, -24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
