.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdi], 79
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], dl
and rsi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], 64
xor sil, bl
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], sil
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], edi
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], ax
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rdx
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 99
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], al
add ax, -15653
or al, al
cmovz ecx, ecx
and rcx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rcx]
movzx edi, cl
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
and rbx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rbx]
add dl, 41
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], dx
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], cx
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], si
sub ebx, 67
add dl, al
sub bl, al
cmovns eax, edx
xor rcx, 96
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdx
and rax, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rbx]
neg al
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rax]
btc cx, dx
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
test al, cl
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 26
inc edi
add al, al
cmp cl, sil
add al, 56 # instrumentation
cmovle rcx, rax
cmovo rsi, rbx
test eax, 1561062795
btc rax, 77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
