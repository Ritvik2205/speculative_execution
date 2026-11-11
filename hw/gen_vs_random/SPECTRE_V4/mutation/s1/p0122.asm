.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec bx
sub sil, -35
cmovl rcx, rsi
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rdx
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ecx
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], -1
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], -1
and rdx, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], ax
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rsi
cmp esi, -84
and rbx, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rbx]
adc al, -86
add ax, 6414
and rsi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rsi]
add bl, 54
btr rdx, rsi
bts rdi, 144
or cl, -55
cmp eax, 89
add dl, 59 # instrumentation
cmovno rcx, rsi
dec bl
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
cmp eax, -813838876
adc cl, 6
bt bx, ax
cmp dl, 95
bt cx, 31
and rbx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rbx]
cmovnbe eax, esi
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], dl
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rax
mul dx
add al, -17 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rdx]
adc ax, -10650
cmovnbe edi, esi
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
or rbx, -108
and rbx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rbx]
add bl, 7 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rcx]
imul si, ax, -75
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], -23
adc cl, -86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
