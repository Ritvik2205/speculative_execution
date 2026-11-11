.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
test edx, ecx
and rdx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdx]
cmovb esi, ecx
add cl, -118 # instrumentation
sbb rbx, 48
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr edx, edi
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], ax
or dl, al
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
or bl, sil
test cl, bl
cmovz eax, ebx
adc edi, -83
add dl, -91 # instrumentation
cmovl rsi, rax
and rsi, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], dx
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], 85
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], -108
and rbx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rsi]
cmovs rdx, rax
btc rsi, 97
and rsi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rsi]
sub rdx, 88
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
sub ax, -13057
movsx ecx, sil
add bl, -91 # instrumentation
inc rsi
adc dil, -15
and rbx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], dil
and rbx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rbx]
cmovnb si, bx
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
bts cx, 135
add al, -7 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rcx]
cmovz rax, rcx
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 92
xchg al, dil
and rdi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdi]
add al, 111 # instrumentation
cmovno eax, ebx
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 4
sub ax, dx
cmp bl, 12
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], rbx
and rsi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
