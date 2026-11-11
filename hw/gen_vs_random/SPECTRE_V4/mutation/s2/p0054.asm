.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 45 # instrumentation
cmovbe rbx, rsi
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], 36
add al, 121 # instrumentation
movsx edi, si
and rdi, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdi]
neg cx
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 7
btc rsi, 36
add al, -109 # instrumentation
cmovns cx, bx
sbb dl, bl
and rcx, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rcx]
movsx edx, sil
adc eax, -983562873
and rbx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rbx]
test sil, -119
mov cl, al
and rdx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdx]
or bl, al
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], al
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rdi
cmovb dx, si
adc si, -110
and rdx, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rdx]
cmovnle di, bx
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], al
cmovo ax, dx
test dil, al
mov edi, 412386591
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
bswap rdx
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
movzx ecx, sil
and rsi, rdx
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdi]
add dl, -85 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
and cl, -118
cmp dx, 13
sbb cl, dil
cmp al, 116
and rbx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rbx]
xor bx, -65
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], bx
bts ax, 155
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], rax
sub cx, -114
or al, al
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
