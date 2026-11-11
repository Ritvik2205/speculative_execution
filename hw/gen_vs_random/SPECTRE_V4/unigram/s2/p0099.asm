.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rbx
and rcx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rcx], 48
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 93
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], ebx
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], dl
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rbx
mov dil, 87
and rsi, 0b1111111111111 # instrumentation
movzx rsi, byte ptr [r14 + rsi]
imul edi, eax, 24
add al, -79 # instrumentation
adc rbx, 11
sbb si, 10
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 1
and esi, eax
and rsi, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rsi]
imul di, ax
and rcx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rcx]
cmovno rdx, rdi
neg bl
add bl, dil
and rbx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], bl
and ax, ax
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], edi
cmp ebx, 80
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
test ax, 2960
and rbx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rbx]
and edi, esi
add cl, sil
adc bl, 127
and rsi, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
and rsi, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], rdi
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], bl
btr eax, 13
or bl, al
and rax, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rax]
btr rax, rbx
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], edx
neg si
and rsi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rcx
inc al
dec al
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
