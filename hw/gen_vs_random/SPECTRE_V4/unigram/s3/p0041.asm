.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], ecx
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], 9
and rdx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdx]
cmp al, -78
sub ax, di
cmp dx, -26
btr ax, bx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], al
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 3
sbb ecx, esi
or bl, -35
adc al, 41
mov sil, dil
cmp dil, -29
test cx, bx
xor bl, 27
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rbx]
sbb bl, -79
and rcx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rcx]
add dl, -94 # instrumentation
cmovnle rax, rdx
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -4112
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rsi
and rsi, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rsi]
adc dil, dil
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
adc al, -86
and rbx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 93
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
sbb rsi, 117
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], -108
btc rdi, rcx
and rdi, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], 93
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
cmovno rsi, rbx
xchg dil, dl
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], dx
and rax, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rcx]
adc rcx, 57
cmovz eax, edx
bt rcx, rbx
mov dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
