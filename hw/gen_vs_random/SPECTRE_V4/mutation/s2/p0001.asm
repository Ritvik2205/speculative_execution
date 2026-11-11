.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -35 # instrumentation
mov al, bl
cmovno ebx, esi
and rax, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rax]
test rdx, rdx
sub di, si
and rax, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
test al, -26
and rdi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 0
or eax, -1779536330
and cx, bx
test edi, 2142010790
xor rdi, -72
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rcx], -79
add eax, 1936378991
cmp dl, 23
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], 109
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
imul edx
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1103421604
and rdx, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
and ax, 27239
and rbx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], al
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edi
bswap edx
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], di
sbb bl, -98
xchg rax, rax
and rsi, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rsi]
or edx, -83
and rbx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdx]
imul rdi, rdx
and rcx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rcx], -31
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], esi
and rcx, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rcx]
and al, 5
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 118
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], cl
sub dil, -11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
