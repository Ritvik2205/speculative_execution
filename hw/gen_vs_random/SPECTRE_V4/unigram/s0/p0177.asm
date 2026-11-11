.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx rcx, si
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 7
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], eax
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], si
and rsi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rbx]
sub rsi, -48
and rcx, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rcx]
btr dx, 209
bts rbx, 5
cmp dl, 23
add al, -127
mov ecx, edi
xchg dl, sil
test dil, -83
test al, 114
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rdi
xor dl, -66
and rax, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rax]
cmovnz dx, ax
adc di, -78
add bl, -43 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dl
cmovnbe di, bx
bswap rbx
and si, ax
test al, dl
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
not bx
adc di, -78
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -2089960014
imul dx, cx, 11
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 20
and rdx, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rdi
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], cx
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], 59
xor rcx, -111
neg eax
and rdi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdi]
btc ax, 65
and rax, 0b1111111111111 # instrumentation
cmp bx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rax]
or ax, cx
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rdx
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
cmp esi, 123
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
