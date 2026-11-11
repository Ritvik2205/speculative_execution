.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 37
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 6
cmovl cx, cx
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], ecx
neg bl
and rsi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rbx
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 82
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btr dword ptr [r14 + rbx], edx
and rax, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rax]
add cl, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], cx
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], sil
adc edx, -125
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
bt ax, 84
mov sil, al
sbb bl, -75
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], dl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], ebx
adc dl, dil
cmp eax, -1538116527
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], ecx
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], dil
add al, -7 # instrumentation
btc cx, di
test ax, cx
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 50
dec edx
add al, dil
mul si
xor di, 51
dec sil
xchg sil, sil
sbb dil, dl
and dl, dl
movzx bx, sil
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 7
cmovb cx, dx
cmovno ax, bx
sub dil, bl
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 25202
and sil, al
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
