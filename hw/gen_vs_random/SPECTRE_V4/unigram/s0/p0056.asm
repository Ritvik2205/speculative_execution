.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov sil, dil
and rax, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rax]
mov cl, 14
and rax, 1072797615
and rax, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rax]
xor ebx, -62
and rdi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdi]
bts eax, edx
and rdx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdx]
cmovnbe rsi, rdi
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
and rbx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rbx]
test rbx, rdi
and rdx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 38
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], edx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 37
add bl, 42 # instrumentation
movsx rax, bl
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], 91
and rdx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rbx], -72
or ebx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ebx
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 99
or eax, 143573881
and rcx, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rdx
add bl, -84 # instrumentation
cmovb bx, ax
cmovnl di, di
and rdi, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 61
and rsi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rsi]
add dl, al
adc bl, dil
and rsi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rsi]
cmovnbe edx, eax
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 0
sbb dl, 53
and rcx, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
adc edi, -83
and rsi, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rsi]
add al, 20 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rsi]
sub sil, 71
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
sbb ax, dx
and di, -34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
