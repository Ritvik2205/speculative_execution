.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rsi]
or dx, 0b1000000000000000 # instrumentation
bsf ax, dx
or ax, ax
and rax, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rax], 60
and rcx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rcx]
test bx, bx
and rbx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
adc cx, 6
cmovno ecx, esi
and rax, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rax]
cmovbe di, di
btc rdx, rsi
and rbx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rbx]
cmovs rdx, rbx
and rbx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rbx]
bt cx, di
and rax, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rcx
xor dx, -43
or al, sil
and rbx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rbx]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rdx
neg eax
cmovle rcx, rax
and rbx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rax]
xor dl, cl
xchg sil, sil
cmovnbe rsi, rdi
and rsi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rsi]
sub bl, -89
and rax, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rax]
xor ebx, 40
test al, sil
and edx, ecx
movzx dx, dl
add ax, 17333
mov dl, al
cmovbe dx, cx
adc bl, 97
or dl, al
cmp dl, -82
add dil, -97 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdi]
sub dil, dil
cmp al, -106
sub bx, 24
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], 76
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
