.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, dil
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
sub sil, sil
and esi, 55
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rcx], eax
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], dx
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
or ax, -12775
and rdx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rcx]
cmp dl, dl
sub bl, 17
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rcx
inc eax
cmovz ecx, edi
xor dl, 83
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rcx
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], di
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
xor bl, al
and rbx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 38
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdi
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
and dil, dl
sbb rdx, 54
or edx, -127
add al, -117 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rax
adc cx, 80
movzx ecx, dl
mov cl, cl
cmovs rdi, rsi
sbb cl, -104
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 85
cmovnb edx, eax
xor rax, rbx
sub sil, al
cmovb ecx, eax
add sil, 110
cmp dl, 32
add bl, -18 # instrumentation
mov rcx, rax
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rax
add rsi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
