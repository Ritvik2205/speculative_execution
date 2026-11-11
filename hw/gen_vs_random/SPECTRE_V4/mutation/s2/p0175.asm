.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 45 # instrumentation
cmovbe rbx, rsi
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], -103
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
adc eax, 917540672
and rbx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rbx]
test sil, 68
mov cl, al
and rdx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdx]
or bl, al
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], al
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rdi
cmovb dx, si
adc si, -74
and rdx, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rdx]
cmovnle di, bx
and rsi, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rsi]
or bx, bx
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], ax
or ax, 57
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
sbb eax, 426996540
xor eax, 1185843233
adc bl, dil
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
test dil, -26
and rsi, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rsi]
xor al, 99
xor rax, -224991767
sbb dl, bl
and rsi, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rsi]
adc si, -74
and rdx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
sub rdi, 105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
