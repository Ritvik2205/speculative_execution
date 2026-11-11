.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], 94
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 61
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], ax
or si, 49
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 52
test bx, -1599
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 77
and cl, dl
adc sil, 49
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 54
test sil, 39
imul dx, cx
and rbx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rbx], di
xor dl, 29
cmovz cx, cx
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], si
dec dil
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 100
and rdx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdx]
test dl, bl
btc ax, bx
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -105
xor eax, ecx
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
sbb ebx, 92
sub rdx, 22
neg bl
and rsi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rsi]
cmp rcx, 40
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 31
xor rax, 75
test cl, -89
add dl, -99 # instrumentation
not ebx
mov rsi, 81
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], dil
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
cmp ebx, 16
xor rax, 71
cmovs edx, esi
sbb sil, 108
add cl, -42 # instrumentation
adc al, bl
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp di, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
