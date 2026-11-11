.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rcx]
sbb bx, dx
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], al
xchg rax, rax
test ecx, -304234347
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], esi
and rbx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rsi]
adc dil, -15
sbb bl, -79
and rbx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rbx]
bt ax, dx
and al, -118
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 3
xor cl, cl
bswap edx
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
xor bl, al
and ax, -14374
and rdi, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rdi]
or edx, 0
and ax, 16313
and rdx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rax
btr di, si
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], -652712956
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
sub dil, -11
movzx eax, bl
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], al
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], di
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], cl
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], esi
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 4070
imul rdi, rdx
and rax, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rax]
cmp edx, edx
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edi
and bl, sil
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 118
and rsi, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdx]
bt rcx, 236
and rdi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rcx], -31
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
