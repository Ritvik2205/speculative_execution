.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub eax, -672265139
xor bl, cl
cmovno esi, edi
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rdi]
xor rax, -1522567562
sbb al, 43
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rsi
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], -125
mov cl, dl
and rbx, 0b1111111111111 # instrumentation
adc rcx, qword ptr [r14 + rbx]
adc rcx, rax
movzx esi, cx
or bl, bl
add edi, eax
add rax, rcx
movsx edx, bx
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
cmp bl, al
bt esi, edx
add cl, 101 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ecx
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -100
test sil, -119
and rbx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rbx]
btr ebx, 156
imul esi
add al, -72 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rdi]
imul rax, rdi, -89
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rsi], 41
xor eax, 1760581269
movzx rsi, ax
adc bx, 52
and rsi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rsi], 49
and rbx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rbx]
cmovl di, cx
btr rdi, 61
xor ax, -22861
and dl, -11
movzx rax, cx
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
xchg al, al
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
cmovbe cx, ax
add sil, bl
and rax, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rax]
mov bx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
