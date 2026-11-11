.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 56 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], 104
and rsi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rsi]
movzx di, cl
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 7
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -21
xor esi, 66
cmovnle bx, dx
adc eax, -983562873
sbb al, 57
adc ax, 25365
and al, 85
and rdx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdx], 2
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], dx
add bl, -59
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], dx
xor al, 55
btc edx, 108
and al, bl
cmovnle rsi, rdi
cmovs eax, edx
xchg esi, eax
and rax, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rax]
bts dx, cx
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], al
cmovo ax, dx
test dil, al
mov edi, -744634650
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
and cl, -101
cmp dx, 13
sbb cl, dil
cmp al, 116
and rbx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rbx]
xor bx, 59
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
