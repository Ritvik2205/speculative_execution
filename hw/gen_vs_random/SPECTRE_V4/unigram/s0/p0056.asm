.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb bl, sil
sub edx, ebx
mov bl, 60
sbb sil, dil
and rbx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rbx]
sub dl, al
sub rsi, rax
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
sub dl, 43
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
add dl, -94 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rax]
xchg rbx, rcx
mov rdx, 17
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], si
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
movzx eax, dl
imul bx, ax
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
cmovs cx, cx
movzx edi, dil
adc ax, 78
add dil, 16
and eax, -37
add sil, -102 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rcx]
imul bx, dx
not dx
and rdx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], 71
movzx rdx, ax
and rbx, 110
xor dl, 84
sub dl, 43
and rcx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], ax
sbb bl, -94
and rsi, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rsi]
cmp di, 94
cmovnbe ebx, ecx
xor dl, dl
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 96
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edx
xor bl, 93
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 43
sbb si, 15
bt si, 48
movzx esi, sil
sub sil, -36
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
