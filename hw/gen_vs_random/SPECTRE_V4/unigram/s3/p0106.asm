.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ebx, -62
movsx ebx, di
bts ax, bx
or ecx, 17
cmovnb rdi, rsi
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], -37
test eax, 1600638830
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 83
cmp dil, dil
imul di, bx, 24
and rsi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 0
sbb dx, 2
xchg bl, bl
cmovo rdi, rcx
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], 82
mov rsi, 4368505613814921305
cmovs ecx, eax
xor cl, -15
mov cl, sil
mov al, dil
cmovl rbx, rcx
movsx ax, al
adc ecx, 114
and sil, -84
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], rax
mul rcx
and rdx, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rdx]
cmp sil, 127
test dl, -102
add al, bl
adc cl, -85
cmovnp ebx, edx
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], -124
cmovbe rsi, rcx
adc esi, edx
cmovbe di, di
add cl, -9
or cx, 0b1000000000000000 # instrumentation
bsr bx, cx
and rdi, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rdi]
add dl, 59 # instrumentation
cmovno rax, rsi
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], 50
imul cx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
