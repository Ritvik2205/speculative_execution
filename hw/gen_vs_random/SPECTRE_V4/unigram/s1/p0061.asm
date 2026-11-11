.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
movzx si, byte ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], ebx
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rax
test ecx, 60
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 40
not cx
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], esi
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 97
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
imul rbx
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 27
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rbx
and rdi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdi]
cmp dl, al
or sil, bl
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 52
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -83
bts rsi, rsi
xchg ebx, eax
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 40
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
imul rsi, rdi
cmovnl rbx, rdi
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 6
xchg edx, eax
and rax, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rax]
cmovs edi, ebx
and rdx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
add cl, 97 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], 16
cmovs rax, rbx
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], 43
bt eax, 84
and rbx, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
neg sil
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rax
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
or dx, ax
sub rbx, rax
and rsi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rsi]
add cl, -37 # instrumentation
adc eax, -39
cmovnl rcx, rbx
sbb dl, sil
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], al
cmovnbe si, bx
cmp dl, 82
sub sil, -36
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
