.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], rdx
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], al
bts ax, dx
imul eax, ebx, -12
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
movzx edx, cl
btc ecx, esi
movzx ebx, al
and dil, 8
and rax, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], ebx
add al, al
and rdx, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], ebx
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 2
and rax, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], ax
sbb rax, 1518549445
and rax, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dil
sub ebx, 13
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
cmovo ax, si
and rbx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdx]
cmovbe bx, cx
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, edi
adc cl, sil
not esi
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], si
cmp bx, 113
sub rdx, 31
test bx, ax
bts edx, edi
bts edi, 84
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rdi]
add sil, sil
sub di, 9
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 93
adc dil, cl
and rcx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rcx]
xchg cl, sil
movsx ecx, al
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], si
btc dx, 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
