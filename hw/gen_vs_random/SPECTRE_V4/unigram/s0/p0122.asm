.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, 93
sub al, bl
neg edx
add al, 118
or si, 94
not rax
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -119
and rax, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rsi]
cmp rax, 1524061352
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 84
inc dil
cmp dl, al
sbb cl, -104
and rdi, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rdi]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf edi, esi
add cl, -37 # instrumentation
adc ebx, 13
and rcx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rcx]
xor ax, 28088
cmp al, bl
and rdx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdx]
and esi, 55
and rdx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdx]
or cl, 1 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rcx
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 84
adc cl, cl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 76
sub bl, bl
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
and rbx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rbx]
add dl, 31 # instrumentation
cmovnl dx, dx
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], 85
sbb bx, 42
xor bx, si
add al, dl
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
and al, -36
and al, dl
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 3
add sil, sil
btc si, di
and rsi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rsi], si
test sil, 84
cmp dl, 53
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rdi]
sbb cx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
