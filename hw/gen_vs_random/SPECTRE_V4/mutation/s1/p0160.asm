.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc cl, 111
add ax, 10655
add dl, 59 # instrumentation
cmovno rcx, rsi
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rdx
cmovl rcx, rsi
and rbx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], ax
and rdx, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdx]
cmp eax, -813838876
adc al, 41
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], -58
bts rdi, 23
imul si, ax, -75
and rcx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rcx]
adc ax, 15251
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rsi
and rdx, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rdx]
cmp esi, -84
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], -109
and rbx, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rbx]
btr rdx, rsi
bt cx, 31
or rbx, 69
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
bt bx, ax
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rax
and rsi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], -50
add al, -17 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
cmovnbe edi, esi
cmovnbe eax, esi
or cl, -104
adc cl, 111
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], dl
and rcx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rcx]
add bl, -59
dec bx
add bl, 7 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ecx
mul dx
dec bl
cmp eax, 1521417271
cmp dl, 83
sub sil, 71
and rbx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
