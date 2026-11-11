.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 55
or di, 0b1000000000000000 # instrumentation
bsf si, di
bt dx, cx
movzx rax, sil
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], 28
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -81
sbb bl, al
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], esi
btr dx, cx
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], bx
and rax, 45
xor ax, bx
and rdx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdx]
sbb rax, 183833426
and rbx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rbx]
xor dl, al
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 59
mov cl, 29
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rcx
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
sbb al, -47
or rax, 86
add dl, -26 # instrumentation
btr edx, 30
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
and rdi, -2
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
and rdx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdx]
add dl, dil
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rdi], esi
cmovnp ecx, ebx
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
adc al, dil
not bx
and rcx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rcx]
xchg si, di
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], bx
and rbx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 3
xor edx, edi
bswap edi
cmovle esi, eax
and rsi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 2
and rdi, -2
adc rax, 1542637830
movzx ecx, bl
cmovs rdi, rcx
sbb dl, bl
cmovnbe rax, rcx
and rcx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
