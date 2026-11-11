.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec cl
xchg di, bx
or dl, 71
and rcx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rcx]
and dil, cl
adc dil, -15
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
and rsi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], ebx
movzx edi, di
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rdx]
xor ax, 30500
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
sub eax, -90064733
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
sub rax, 1294268026
cmp ax, 26170
add cl, 70 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rbx]
and dl, -104
cmp rsi, 74
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
imul al
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rbx]
add bl, -24 # instrumentation
cmovnbe cx, cx
and al, -1
sub rdx, rsi
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], eax
test dil, -5
and rcx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rcx]
cmovo si, cx
add ecx, 99
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], si
cmovnp cx, si
cmp dl, dl
test al, 18
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rax]
xor ebx, ecx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], -60
and rdx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rdi]
xor dil, 37
test ax, -6841
or rdi, rdx
test ax, -6841
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
