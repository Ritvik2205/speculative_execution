.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub sil, -35
cmovnle rbx, rcx
add ax, 17333
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rax, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rax]
adc cl, bl
sub di, ax
inc cx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rdi]
cmp sil, -100
adc rax, 519150753
and eax, -1237519395
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 37
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], al
sub rax, 120
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 7
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], -17
adc eax, -60
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 40
neg rdx
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 25202
and rsi, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rsi]
cmovnle rax, rcx
sbb dl, sil
sub cl, -119
imul eax
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 3
xor cl, -101
cmovnle eax, edi
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], bl
sbb cl, 40
sub al, 69
movsx edx, al
and rdi, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rcx], 83
sbb dl, -71
mov dil, dil
and rax, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rax]
neg rcx
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], -59
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -2118629639
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 33
xor rax, 1049851782
cmovnbe ebx, eax
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], esi
cmp rax, 1097504565
not rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
