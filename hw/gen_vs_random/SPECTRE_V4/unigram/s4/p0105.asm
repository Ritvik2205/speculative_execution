.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, cx
and rdx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rdx], dx
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
mov rsi, 80
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
add dl, -114 # instrumentation
cmovl cx, dx
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rax], rbx
cmovl rax, rdx
add dl, 12 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rdi], eax
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rsi], bx
imul bl
add al, 5
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], ebx
and rcx, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rcx]
sbb dl, dl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rsi]
bt edi, ebx
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], edi
mul ax
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rbx]
sub cl, -74
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 87
xor al, 29
and rax, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rax]
adc sil, dl
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], si
cmovnle edx, ecx
sbb sil, 108
inc ecx
xor ecx, 57
cmovnb ecx, ebx
add cl, -21 # instrumentation
adc rdx, 22
add al, dl
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
cmovnbe rdx, rbx
and rcx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rbx]
imul di, bx
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdi]
mov eax, 12
adc sil, 77
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dil
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
