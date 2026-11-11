.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdx]
cmovl rcx, rsi
and rsi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rsi]
add dl, 59 # instrumentation
cmovno rcx, rsi
bt cx, 31
adc ax, -10650
cmp dl, 95
add bl, -59
add ax, -18924
adc cl, -4
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ecx
bts rdi, 23
btr rdx, rsi
and rdx, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rdx]
cmp eax, 512128713
or rbx, 69
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rsi
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], -58
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], dl
dec bx
cmp esi, 123
add al, -17 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rax
and rbx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rbx]
sub sil, -35
cmovnbe eax, esi
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rdx
dec bl
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
add bl, 7 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
adc cl, -85
and rbx, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rbx]
imul si, ax, -75
adc al, 116
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], ax
or cl, 12
cmovnbe edi, esi
bt bx, ax
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rcx]
cmp eax, 89
mul dx
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], -109
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], -23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
