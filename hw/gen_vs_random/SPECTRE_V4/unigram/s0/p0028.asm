.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rdi, 167
mov ecx, 9
mul edx
and rdx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rdx]
xor dx, ax
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 21
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], cl
xor cl, al
cmovnbe rcx, rsi
xor rdx, rbx
movzx eax, bl
mov rdx, 81
and ax, 35
cmovs esi, eax
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
bts ecx, 53
and rbx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rbx]
cmovo rbx, rbx
cmovno ebx, edx
mul ax
cmp al, al
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rsi
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], edx
cmovnbe cx, di
sub rsi, 26
and rax, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rax]
cmovnb eax, esi
imul rdi
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 97
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
cmp dx, 59
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], di
inc ebx
btr bx, dx
sbb dil, 45
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 66
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
bts esi, 241
xor cl, al
and rbx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], di
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], dl
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rbx
mov rcx, 5862286138240743445
movzx rdx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
