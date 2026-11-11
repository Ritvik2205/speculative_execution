.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dx, 28394
or al, 1 # instrumentation
mov ax, 1 # instrumentation
div al
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], edx
bswap edi
test rdx, -1074289902
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 96
and rdx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdx]
movzx cx, dil
and rbx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rbx]
mul ax
and rcx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rcx], -79
and rcx, 0b1111111111111 # instrumentation
adc rcx, qword ptr [r14 + rcx]
sbb cl, 40
adc cl, -4
and rdx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdx]
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
cmp eax, -813838876
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], 4
and rbx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rbx]
sbb al, dl
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rdi], ax
btr ebx, 116
imul ax, dx
add sil, 32 # instrumentation
adc rsi, 11
test cl, -10
and rdx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rax
xor edi, 127
and rdx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rdx]
or ax, 0b1000000000000000 # instrumentation
bsr si, ax
and rbx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rbx], ebx
and rbx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rbx], di
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
cmp rcx, -121
and rcx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rcx]
add bl, -30 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
cmovnb bx, di
or dil, -16
cmp dx, 58
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], 49
bts ecx, ecx
not dx
sub dil, dil
not esi
and rbx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rbx], -112
and rbx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdx]
sub al, al
mov eax, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
