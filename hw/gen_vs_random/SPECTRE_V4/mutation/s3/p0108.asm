.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 70 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], ebx
and rdx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rdx]
movzx edi, di
or dl, 71
sub rdx, rsi
add bl, -24 # instrumentation
cmovnbe cx, cx
test al, -24
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
cmp rsi, 74
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], eax
and dil, cl
imul al
test dil, -58
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
or rdi, rdx
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
cmovnp cx, si
and al, 49
adc dil, -48
cmp dl, dl
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], -60
test ax, 2960
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
cmovo si, cx
xor dil, 37
and rbx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rbx]
xchg di, bx
dec cl
cmp ax, 28568
xor ebx, ecx
sub eax, -529389957
xor ax, 13332
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], si
sub rax, 714283065
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
test ax, -14473
and rcx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rcx]
add ecx, 99
and dl, 126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
