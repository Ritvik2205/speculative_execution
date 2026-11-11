.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, -123
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rax], rax
adc sil, bl
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], edx
test al, -38
and cl, -101
and ax, cx
xor dil, al
sub al, 96
and rdi, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
cmovbe rdi, rsi
cmp ebx, -27
or rax, rsi
add bl, -2 # instrumentation
cmovs rdi, rcx
add al, -60 # instrumentation
cmovle rax, rbx
cmp dl, dil
sub dl, sil
movsx rsi, dx
and rbx, 76
movsx eax, dil
add cl, 7 # instrumentation
adc ax, 20
and rdx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rdx]
cmp dil, 101
and rsi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rsi]
cmovnb edx, eax
sub al, 26
cmovl di, bx
or sil, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv sil
test rax, -1395313845
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], di
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
mul cx
cmovnb cx, ax
mov edx, -950755477
and cx, -117
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], 98
or ax, -26182
mov cl, 1
or sil, sil
cmovnz eax, eax
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 30
and rdi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
