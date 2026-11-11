.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rax], 33
and rdi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dl
dec bl
and rdi, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rdi]
add al, bl
and sil, sil
and rax, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rax]
test ecx, -304234347
and rdx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rdx]
test al, 114
add al, 100 # instrumentation
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
or bx, 0b1000000000000000 # instrumentation
bsr cx, bx
btc rax, 227
imul ax, si
and rcx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rcx], 13
cmovbe eax, ebx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
and rax, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 65
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -2118629639
cmp dil, dl
mov ax, 31802
and rbx, 0b1111111111111 # instrumentation
movzx si, byte ptr [r14 + rbx]
test dil, -26
cmovs rdi, rdx
and rcx, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rcx]
xor rax, rbx
and rbx, 0b1111111111111 # instrumentation
add si, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdx]
add al, 32 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rax]
test al, -26
xor al, 30
add rax, 114
sbb dil, 25
and rdi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rdi]
add di, 92
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 1
and rdx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdx]
add cl, -75 # instrumentation
sbb eax, -676736552
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
xor rbx, -99
cmp rbx, rcx
xor bl, -126
and rdi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
