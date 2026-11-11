.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, bl
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -538885619
and rcx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rcx]
mov rcx, rbx
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 21
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
not cx
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rcx
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
sub bl, 56
and rax, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rax]
cmovl cx, dx
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 73
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], rdi
and rsi, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], -50
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], 79
sbb ax, 1843
and rdi, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rdi]
cmp al, -106
sub bx, bx
bts rdx, rdi
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
or al, -90
btr ax, cx
and rsi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rsi], ecx
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 85
and rdx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rdx]
bswap rbx
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], 29
neg rdx
and rdi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdi]
adc dil, al
cmp dl, al
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], 8
or edx, 1 # instrumentation
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
mov cl, al
and rdx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdx]
mov al, bl
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], -105
cmovs rcx, rdx
xor dl, -66
cmovbe ecx, eax
adc dil, dil
mov rbx, 64
sub ax, 24426
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
