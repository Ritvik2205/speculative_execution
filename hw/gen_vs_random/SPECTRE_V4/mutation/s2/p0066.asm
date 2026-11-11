.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], al
bt rcx, 189
and rcx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rcx], -31
and rbx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rdi]
and ax, 16313
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], di
btr di, si
adc dil, -48
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rax
and rdx, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rdx]
sub dil, 65
and rsi, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edi
test ecx, -907816607
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], esi
cmp edx, edx
and ax, -23308
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rsi]
xor bl, al
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], esi
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 4070
and rdx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdx]
xor cl, cl
imul rdi, rdx
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 118
xchg rax, rax
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], cl
bt ax, dx
and al, -124
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], al
bswap edx
movzx eax, bl
and rbx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], -1807520971
sbb bl, -98
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
and rdx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 4
and rax, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rax]
or edx, -83
and bl, sil
sbb bx, dx
and rcx, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
