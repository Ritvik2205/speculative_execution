.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], al
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], 79
and rax, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rax], -24
or dil, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv dil
and rdx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], -32
cmovnb eax, edx
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 2
xor dx, 7
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], cx
add dl, -8
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], eax
cmovno rsi, rdi
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rax
or eax, 143573881
xor al, -15
and si, -74
or cl, -104
movzx rax, cx
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
sbb al, -39
add al, -86 # instrumentation
cmovnp eax, edi
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 118
sbb dl, -62
add dl, 81 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], cl
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], rbx
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], -122
cmovnb rax, rbx
test al, 72
movzx rsi, cx
and rdx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdx]
sub rdx, 89
add ax, bx
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 92
bts rbx, 17
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 111
adc al, dil
and rdx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdx]
sub al, al
bt rax, 59
add ax, dx
and di, -34
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 64
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
