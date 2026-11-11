.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, cl
add cl, 70 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
sub eax, -638345541
sub rax, 2016976449
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], ebx
or dl, -26
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], si
cmp dl, dl
add bl, -24 # instrumentation
cmovnbe cx, cx
and rax, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rdx]
test ax, -6841
and rcx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
xor ebx, ecx
xor dil, 117
test al, 18
dec cl
and rbx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], -60
and dl, 126
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], eax
xchg di, bx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rdi]
and al, 5
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
sub rdx, rsi
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
movzx edi, di
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
test ax, -6584
or rdi, rdx
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
test dil, -58
and rdx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rcx]
adc dil, 38
cmovo si, cx
cmp rsi, 74
add ecx, 99
cmovnp cx, si
xor ax, 13332
cmp ax, 28568
imul al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
