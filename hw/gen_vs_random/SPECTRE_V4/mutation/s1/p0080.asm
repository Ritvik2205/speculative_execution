.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, dl
cmovbe bx, di
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], rcx
and rdi, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rdi]
test cl, bl
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rsi
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
or ax, -26182
test edx, -38580719
xor rdx, rcx
or dl, dl
sbb eax, 727775941
btc rax, rbx
sub edx, eax
and rcx, 29
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
cmp rax, 2096656187
and rdi, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rdi]
movzx edx, sil
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], 120
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
bt rdi, rbx
sbb al, -39
cmovbe di, ax
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
add bl, -18 # instrumentation
cmovs cx, ax
btc edi, edx
sub cl, 92
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], -86
imul eax
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], bx
and rsi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rsi], ecx
and rbx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 3
add al, 122 # instrumentation
cmovz si, ax
cmovbe rdx, rcx
cmovnle edx, ebx
or bx, 0b1000000000000000 # instrumentation
bsr bx, bx
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], edx
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], ecx
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 5
add ax, -7857
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rdx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
