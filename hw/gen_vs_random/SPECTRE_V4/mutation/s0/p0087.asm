.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ebx, ecx
sub rdx, rsi
dec cl
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
xor ax, -22861
xchg di, bx
test ax, -14473
and rdx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rbx]
cmp dl, dl
cmp rsi, 74
and dil, cl
and dl, -53
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rdi]
or dl, 71
sub rax, 714283065
and rsi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], ebx
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
test ax, 2960
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], eax
cmovnp cx, si
and al, 75
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rdi]
movzx edi, di
adc dil, -15
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], -87
and rcx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
cmovo si, cx
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
add ecx, 99
and rdx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rdx]
cmp ax, -18179
test al, 27
and rcx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rcx]
add cl, 70 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rbx]
xor dil, -23
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
imul al
test dil, -58
or rdi, rdx
add bl, -24 # instrumentation
cmovnbe cx, cx
sub eax, -90064733
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], si
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
