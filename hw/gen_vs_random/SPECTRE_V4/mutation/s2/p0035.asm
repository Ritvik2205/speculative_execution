.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx edi, di
test al, -24
cmp ax, -18179
and dl, -53
cmovo si, cx
test ax, 2960
and rcx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rcx]
add cl, 70 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rbx]
dec cl
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rdi]
add bl, -24 # instrumentation
cmovnbe cx, cx
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], si
adc dil, -17
xor dil, 37
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], -87
and rcx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rcx]
sub eax, -638345541
and rsi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], ebx
test ax, 2960
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
and al, 85
cmovnp cx, si
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
sbb ax, 75
imul dl
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -2118629639
and rbx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rbx]
xor bl, 27
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], 22
xor rcx, 112
dec rbx
cmovp rdx, rax
test dil, 64
and rax, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rax]
bswap rcx
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdx]
and al, bl
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], 73
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -4112
test cl, cl
adc bl, bl
bts esi, 107
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
