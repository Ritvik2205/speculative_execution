.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rsi]
xor bl, al
sbb bl, -75
bt rcx, 236
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], al
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 118
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
and rdx, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rdx]
imul rdi, rdx
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rax
and rsi, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rsi]
sub dil, -11
and rcx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rcx], -31
and rax, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rax]
or edx, -118
and al, 75
and rdx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdx]
and ax, -6897
and rdx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdx]
sbb bx, dx
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], cl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
xor cl, cl
and rbx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], di
cmp edx, edx
and rdx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdx]
adc dil, -48
and ax, -603
and bl, sil
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edi
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], al
xchg rax, rax
and rdi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdi]
movzx eax, bl
and rbx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], esi
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 3
test ecx, -907816607
and rcx, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rcx]
btr di, si
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], esi
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], -652712956
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 4070
and rdi, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rdi]
bswap edx
bt ax, dx
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
