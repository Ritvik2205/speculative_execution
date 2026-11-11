.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 45
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], cl
and sil, -84
cmovnb rsi, rdx
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], ecx
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], -15
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rbx
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], 110
and rbx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
sub esi, -69
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], 10
and rax, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rax], 30
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rsi]
btc rdx, rdx
xor rcx, rax
test eax, -251558852
and al, bl
test eax, 1600638830
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], 86
and rdi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], 91
adc eax, 948001339
btc di, bx
imul edx, ebx, 1
and rdi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdi]
add cl, sil
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 12
cmp ebx, -19
bswap rcx
add al, -10 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], di
adc dl, sil
sbb rdi, 18
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btr qword ptr [r14 + rsi], rbx
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rdi
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -91
imul esi, esi
or cx, 1 # instrumentation
and dx, cx # instrumentation
shr dx, 1 # instrumentation
div cx
cmp dl, al
and rdx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rdx]
mov dl, 81
xchg bl, dil
dec sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
