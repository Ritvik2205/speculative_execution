.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx edi, di
test al, 57
cmp ax, -18179
and dl, -53
cmovo si, cx
test ax, -14473
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
sub eax, 1050143384
and rsi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], ebx
test ax, -23852
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
and al, -12
cmovnp cx, si
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
add cl, 35 # instrumentation
cmovnb rdx, rdi
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
btr rsi, 20
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 4
and rax, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rax]
cmovle rbx, rdx
adc al, -70
test cl, -119
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rcx], di
add cl, 122 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], eax
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rcx]
test bl, cl
add cl, dl
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], esi
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 94
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 1
cmp rbx, -91
and rax, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rax], ax
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
