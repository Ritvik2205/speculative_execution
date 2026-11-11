.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add rbx, rdi
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 75
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], ax
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 57
add rdi, rcx
btc rdi, 167
sbb ax, -26881
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], dx
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], dx
imul ax, di
sub dl, bl
and rbx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rbx], esi
adc edi, 49
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], 94
mul rbx
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 98
mul esi
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], edx
cmovnb di, di
test ax, di
add ebx, ecx
or ax, cx
sub al, al
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
or ax, dx
xor sil, 56
and rax, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rax]
adc bl, 89
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
xor ax, 25554
and rcx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rcx]
sub eax, esi
and rbx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rbx]
sbb edi, 31
adc rsi, 83
add di, -74
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], dl
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
test ax, 23760
and rax, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rcx
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 72
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rax], rax
test ebx, -595096626
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], rcx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rdx]
mov al, al
movzx bx, dl
add al, 123 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
