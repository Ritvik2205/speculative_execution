.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 16 # instrumentation
cmovnz ax, cx
imul dl
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
cmovbe ecx, eax
or al, -47
cmovp rsi, rdi
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 3
add dl, 47 # instrumentation
cmovnle bx, dx
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], -17
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], al
btr rax, rbx
or dl, dl
cmp cl, bl
and rdx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
btr rax, 187
neg al
bswap edi
and rdx, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
and ax, -6897
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
sbb bl, -75
xchg rax, rax
and rsi, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rsi]
or edx, -128
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
and al, 75
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 118
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], cl
sub dil, 65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
