.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt di, 24
add bl, -84 # instrumentation
cmovb cx, ax
adc edx, -125
inc dx
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
btr rcx, 134
and rbx, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dil
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -18
sub cl, -73
or ax, 0b1000000000000000 # instrumentation
bsf si, ax
mov bl, al
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
test sil, 1
sbb al, 31
and dx, -107
and rcx, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], sil
not si
mov rax, -4627568876460436527
add bl, 122 # instrumentation
cmovz bx, cx
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], si
btc rax, rsi
and rsi, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
mul dl
and rcx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rdi], dx
and rax, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rax]
neg rbx
xchg al, al
or ebx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ebx
btc rdx, 178
and rax, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rax]
movsx eax, ax
btr ax, dx
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rcx
and rcx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], 25738
cmovs ecx, edi
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], eax
dec bx
cmovbe ecx, eax
btc eax, esi
and rsi, 0b1111111111111 # instrumentation
add cx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
