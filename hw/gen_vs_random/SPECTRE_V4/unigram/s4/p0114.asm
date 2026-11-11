.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rcx, rbx, 73
neg di
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
add bl, -74 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rcx]
mov rdx, -3284511739993892328
sbb ax, 16480
and rdi, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rcx]
adc edi, -83
cmovnb dx, bx
sub al, 86
test di, bx
and rbx, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rbx]
and esi, ecx
adc bx, si
and rsi, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rsi]
and dil, -23
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], cx
neg rdi
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 3
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], di
test dx, 28394
sbb cl, -69
and sil, -84
bt esi, 87
or dx, 0b1000000000000000 # instrumentation
bsr di, dx
adc bl, 79
xor al, 99
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rax], 97
movzx edx, sil
and rcx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rcx]
bswap eax
xchg di, bx
inc rax
bt cx, 31
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 32
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], al
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], dl
sub ecx, -107
imul edi, esi
add rbx, 82
and rcx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
cmp sil, al
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
