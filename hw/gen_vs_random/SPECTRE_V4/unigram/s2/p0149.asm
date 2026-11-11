.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rsi]
add bl, -49
dec ax
sub ax, cx
cmovnz rax, rdi
add cl, -69 # instrumentation
adc sil, sil
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], ebx
add dl, -91 # instrumentation
cmovl rsi, rax
btc rcx, rsi
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 18
sub edi, 27
and bl, 76
add al, 23 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 100
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], -39
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1308203108
and rdi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], cl
sub si, -92
cmovnz ax, di
xor al, -6
and rsi, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rdx
cmp al, bl
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
and bx, 43
add dil, -27 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 17
mul dx
and rbx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdi]
cmovz rbx, rdx
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 48
btr bx, dx
movsx esi, bl
and dl, bl
add al, -7 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rcx]
add ebx, -57
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], al
and rdx, 84
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 7
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
and rax, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rax]
add al, 20 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
