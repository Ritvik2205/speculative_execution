.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rsi]
add al, -17 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rbx]
cmp eax, 64
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ecx
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rdx
adc al, -70
or cl, -55
and rbx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], -58
cmovl rcx, rsi
cmp eax, -813838876
bt bx, ax
adc ax, 29444
cmp dl, 83
bt cx, 31
dec bl
and rcx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rsi
and rbx, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rbx]
mul dx
or rbx, 69
add bl, -49
cmovnbe edi, esi
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], dl
imul si, ax, -75
add ax, 6414
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], -1
add dl, 59 # instrumentation
cmovno rcx, rsi
and rdx, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdx]
sub sil, 71
and rcx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rcx]
add bl, 7 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rsi]
btr rdx, rsi
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], -23
cmp esi, 123
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rax
adc cl, -85
dec bx
adc cl, 31
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], ax
and rbx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
cmovnbe eax, esi
and rdx, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
bts rdi, 144
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
