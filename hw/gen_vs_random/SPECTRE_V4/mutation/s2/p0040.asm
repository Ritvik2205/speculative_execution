.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -75 # instrumentation
sbb eax, -676736552
btc rdi, rbx
mov dl, al
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ebx
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], bl
cmovl si, dx
cmovnb ecx, eax
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], di
movsx si, cl
sub rsi, -104
and rdi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rdi], edi
imul dl
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 4
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rdi]
neg cx
and rdi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdi]
add cl, -97 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
cmovnz rdi, rsi
adc rcx, -99
test ecx, -304234347
cmp dl, cl
mov cl, al
or rax, -823069511
and rsi, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rsi]
or bx, bx
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], ax
or ax, 7381
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], -124
and bl, -60
imul ebx, edi, -24
btr di, 245
and rax, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rax]
sbb eax, 40509622
xor eax, 167244411
adc bl, dil
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
test dil, -58
and rsi, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rsi]
xor al, 99
xor rax, -98
sbb dl, bl
and rsi, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rsi]
adc si, -110
and rdx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
sub rdi, -34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
