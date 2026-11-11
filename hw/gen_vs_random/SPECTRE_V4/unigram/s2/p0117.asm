.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], dil
cmp al, bl
cmovno rax, rbx
cmovns di, si
sub bl, al
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], 21
cmovbe rbx, rsi
xchg rsi, rax
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], al
and rbx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rbx]
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
xor rax, -224991767
xchg bx, ax
add rdx, rdi
sub rax, -1881584175
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
cmovno eax, ecx
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -2118629639
and eax, -784085938
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 73
imul edi, esi, 92
and rdx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rdx], ebx
add dil, 75
xor esi, -82
bts ecx, ecx
not bx
or edx, -83
btr esi, 227
mul rbx
sbb cl, 40
mov ebx, 51969593
mov cl, -38
and rcx, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rcx]
movsx cx, dil
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
adc rcx, qword ptr [r14 + rcx]
add bl, -101 # instrumentation
cmovz eax, eax
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
mov rdx, rcx
sub eax, ebx
btr esi, 227
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 98
sbb cl, cl
not rsi
sbb dx, 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
