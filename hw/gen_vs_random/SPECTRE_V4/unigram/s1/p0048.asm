.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, -104
and rsi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], 39
and sil, -84
mov al, bl
add cl, -50 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rdi]
cmovnle ax, si
add al, -63 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 36
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 44
and rsi, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rsi]
and al, al
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
neg rdx
xor si, dx
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
movzx rdi, bx
bts ecx, edx
and rbx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rbx]
cmp rdi, rdx
movsx edi, dl
add cl, 58 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], cl
neg rsi
cmovl ebx, edx
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -87
and rax, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rax]
bts rsi, rbx
test ecx, -304234347
bswap eax
movsx rbx, di
and rdx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdx]
or cl, cl
adc rdx, rbx
sbb dil, 100
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], 79
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], 16
adc bx, 52
btc ecx, esi
cmovbe edx, edx
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], eax
test sil, 1
cmovns ax, dx
sbb di, di
movzx esi, cl
add cl, -9
imul edx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
