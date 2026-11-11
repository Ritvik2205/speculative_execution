.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], 67
cmovnl rcx, rdi
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], dl
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], ax
test bl, 110
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
and rdx, 84
add cl, 62 # instrumentation
cmovnz si, si
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
neg dx
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdi], esi
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 57
adc rdx, -90
and rdx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], rsi
cmp cl, 100
inc ebx
add dil, al
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 44
or rsi, -5
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rax]
mov al, 9
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], dl
adc rdi, rsi
sbb cl, 35
add bl, -13 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
and rcx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], rdx
btc ebx, ecx
cmp cl, -80
and rax, -779592432
and rdi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 23
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], edx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rdi]
adc edx, -125
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], esi
and cl, 126
cmovnb di, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
