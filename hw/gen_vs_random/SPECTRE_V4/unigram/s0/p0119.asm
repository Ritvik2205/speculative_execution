.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc al, bl
and rdx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rdx]
adc cl, cl
cmovnbe ax, di
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 63
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
xchg sil, sil
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 7
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rbx], ax
and rbx, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], 110
cmp cl, dl
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], ax
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
add eax, 1936378991
mov eax, esi
cmovnl dx, ax
mov ebx, 51969593
adc dil, dl
cmovnle dx, dx
or ax, 0b1000000000000000 # instrumentation
bsr si, ax
sbb esi, 11
or ecx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ecx
add cl, sil
sbb dl, -62
sub rsi, -89
cmovnz rax, rax
and ax, -12738
or cx, 0b1000000000000000 # instrumentation
bsf si, cx
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
sbb cl, 40
and rsi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rsi], -98
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
and rdi, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rdi]
inc al
and rcx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rcx]
neg di
and rbx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rbx]
test edx, -38580719
bt ecx, 135
sub edx, -122
and rdx, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], -43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
