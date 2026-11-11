.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], ebx
or rdi, rdx
and rdx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
test ax, -23852
and dil, cl
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], si
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
cmovo si, cx
and al, 85
cmp ax, 28568
and rcx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
sub eax, -90064733
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rdi]
sub rax, 120
and rdx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], eax
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], -60
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
xor ebx, ecx
and rax, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
or dl, 71
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
add ecx, 99
adc dil, 124
movzx edi, di
cmp dl, dl
test dil, -83
xchg di, bx
add bl, -24 # instrumentation
cmovnbe cx, cx
xor ax, -6064
and dl, -104
and rcx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rcx]
cmovnp cx, si
xor dil, 37
test al, 57
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
sub rdx, rsi
imul al
dec cl
test ax, 2960
cmp rsi, 22
add cl, 70 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
