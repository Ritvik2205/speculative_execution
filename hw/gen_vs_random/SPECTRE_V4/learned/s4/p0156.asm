.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
add cl, dl
sbb al, 32
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
cmovz esi, ecx
or edx, -127
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
mov edx, ecx
test al, 80
sbb cl, bl
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 94
test cl, bl
cmovns bx, di
adc si, si
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], dx
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
add dil, dil
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 10
cmovz esi, edx
or sil, sil
and rdi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rdi], dx
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], dx
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 7
and rbx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rbx]
xor ax, 25554
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 20
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], al
sub dl, al
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], cx
sbb cl, bl
test bl, bl
add bl, -102 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rax]
test rcx, -2118888343
bt edi, edx
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 97
and sil, -49
and rdi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdx]
movsx rdi, bx
cmovs di, di
imul rsi
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdx
cmp cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
