.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz edi, ecx
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
xor rbx, rsi
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], dl
imul bx
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
cmovz rsi, rdi
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 3
and rbx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edi
bt ecx, esi
cmp dx, ax
xor esi, eax
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -31428
and rbx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], 55
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 48
or ax, -15282
and rsi, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rsi]
add eax, -1796699558
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], al
imul bl
cmovnp esi, ebx
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 61
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], eax
movzx edx, dil
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 84
and rax, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rsi]
sbb di, -76
and rdx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdx], 41
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], al
sub sil, -36
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], 71
and rdx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rdx]
add al, 122 # instrumentation
cmovns ebx, edx
cmovo rdi, rdi
bt eax, esi
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
cmovz ax, ax
and rsi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rbx], cx
and rbx, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rbx]
add bl, -72
xor dl, 2
sub rax, -701741274
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
