.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt ax, 145
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], 76
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], cx
cmovnb eax, ebx
and rbx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rbx], rax
bt si, 114
or ebx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ebx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], -99
cmovnl cx, si
test cl, -31
and rsi, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
btc ax, 87
cmp bx, 113
sub rax, 1914398062
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], edi
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rax], rax
add sil, dil
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], cx
xor al, -84
and rbx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
mul cl
test rsi, 96
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 57
and rcx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rcx]
add cl, sil
neg eax
or rsi, 73
add al, -32
sub bx, 24
add al, 17 # instrumentation
cmovnle ebx, edx
btc ecx, 233
or ax, 0b1000000000000000 # instrumentation
bsr ax, ax
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
cmovle rax, rdi
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
adc di, -78
imul edx, edx
add rsi, rsi
xor edi, 127
cmp ebx, -19
adc dil, 109
adc eax, -689629357
add rbx, 76
cmp bl, dl
imul ecx, edx
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
