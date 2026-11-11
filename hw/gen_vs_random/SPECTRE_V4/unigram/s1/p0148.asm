.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 76
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], 98
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
and rdx, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rdx]
or bl, cl
test eax, 1561062795
cmovnbe dx, si
cmp cl, 6
and rdx, 37
add cl, 15
test dx, ax
add al, -117 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rdx]
mul cl
add cl, 119 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdx]
inc rdx
adc bl, dl
sbb al, 32
and rcx, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 90
test esi, 85
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
add cl, 57
add sil, 72 # instrumentation
cmovle si, bx
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 26
cmovnz ax, bx
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
xor dil, al
test dl, dl
and rax, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rax]
dec rax
and rsi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], edi
btc ecx, 62
sub ebx, edi
and rdi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdi]
btc ecx, 28
and rdx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdx]
btc rcx, rsi
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 87
bt ecx, eax
cmovle rax, rbx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 39
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rax], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
