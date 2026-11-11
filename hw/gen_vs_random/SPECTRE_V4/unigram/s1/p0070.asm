.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], 27
cmovnp cx, ax
adc dl, 90
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 4
and rbx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rbx]
sub sil, cl
sbb sil, bl
and rcx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], -96
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, ecx
and rsi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], edx
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
neg edx
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 39
not ax
mov edx, eax
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 52
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 7
and rsi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rsi]
imul bl
add dl, 1 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmp di, word ptr [r14 + rdi]
movzx rax, al
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
imul sil
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 5
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], cx
adc dil, 38
bswap ebx
and rcx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
bt rcx, 189
cmp bl, -79
or ebx, -82
sub bx, 24
imul edx, eax
and rdi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rdi], edi
test di, bx
add al, 23 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 19
and rbx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rbx]
mov ax, cx
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], eax
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], di
and rbx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rbx]
and rcx, 29
bt bx, 96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
