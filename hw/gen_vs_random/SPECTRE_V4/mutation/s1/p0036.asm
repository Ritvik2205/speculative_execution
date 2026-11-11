.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], -50
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rdx
bt bx, ax
add bl, 7 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rsi]
add ax, 6414
cmovl rcx, rsi
or cl, 83
add dl, 59 # instrumentation
cmovno rcx, rsi
and rcx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rcx]
cmp esi, 123
btr rdx, rsi
adc cl, -4
cmovnbe edi, esi
cmp eax, 1521417271
and rbx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rbx]
or rbx, -107
and rbx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rbx]
add bl, -49
adc cl, -4
sub sil, -35
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], dl
and rbx, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], -1
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rsi]
mul dx
imul si, ax, -75
dec bx
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ecx
cmovnbe eax, esi
bts rdi, 23
adc al, -59
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], -109
cmp dl, -82
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rax
cmp eax, -813838876
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rsi
bt cx, 31
and rcx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rcx]
dec bl
add al, -17 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], ax
adc ax, 25365
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
