.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 59 # instrumentation
cmovno rcx, rsi
cmp dl, 23
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rax
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], -58
cmovnbe edi, esi
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ecx
adc cl, -4
bt bx, ax
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], -109
imul si, ax, -75
and rbx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rbx]
dec bl
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], ax
add bl, -49
cmovl rcx, rsi
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
cmp eax, 1521417271
or rbx, -107
add ax, -7857
and rbx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rsi
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], -50
adc al, -70
and rbx, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rbx]
bt cx, 31
and rcx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rcx]
cmovnbe eax, esi
and rsi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rsi]
add bl, 7 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rsi]
btr rdx, rsi
adc ax, -10650
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
mul dx
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rdx
or cl, -55
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], dl
add al, -17 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rbx]
cmp eax, 2
sub sil, -35
adc cl, 31
dec bx
bts rdi, 144
and rdx, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rcx]
cmp esi, 123
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
