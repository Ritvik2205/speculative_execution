.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
adc bl, -20
and rax, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rax]
cmp rdi, 28
dec rsi
cmp bl, bl
test ax, ax
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rsi]
and sil, dl
and rsi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rsi], ebx
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 1 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rdx], ax
neg dl
not di
and rax, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rax]
bt esi, 84
btr edi, 54
cmovnz rdi, rsi
add dil, 70 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
bts rax, 69
add bl, 127 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], 90
add dl, -4 # instrumentation
cmovp di, cx
mul ecx
cmp ax, 26170
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rax
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], -123
dec bl
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
mov rdx, -3088288992777791879
and esi, 61
imul dl
and dl, -53
mov sil, dl
cmovnz dx, ax
and rdi, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rdi]
and rdx, 84
inc al
or dil, 5
or edx, 1 # instrumentation
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], 55
cmovns cx, dx
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
sbb dl, 53
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
