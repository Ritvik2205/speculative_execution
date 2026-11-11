.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], ecx
xor rcx, rax
or bl, al
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 848492318
and rbx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], dl
or bl, bl
and rsi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rsi], -15
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rdi]
bts ebx, 189
adc cl, cl
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], 73
test al, 52
and rdx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rdx]
and eax, edi
imul rsi, rsi
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
cmovno esi, edx
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
sbb rdx, 6
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rsi]
add al, 46 # instrumentation
adc ax, cx
not bx
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
adc ebx, -55
xor ebx, -62
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], si
btr cx, 252
and rdi, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], al
or eax, 1 # instrumentation
and edx, eax # instrumentation
shr edx, 1 # instrumentation
div eax
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdx
and rbx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rbx]
neg cx
btc rsi, 36
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], -84
adc dl, al
xor rsi, -3
mov ax, 31802
and rdx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdx]
movzx edx, al
dec cx
imul eax, edx
btc rdx, rsi
and rcx, 11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
