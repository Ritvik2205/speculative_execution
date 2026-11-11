.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc cl, -86
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], ebx
and rcx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], 67
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
adc dl, 30
cmp di, -8
adc rax, rcx
movzx ecx, dil
and rax, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rsi]
sub rdx, 60
and rax, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rbx]
adc sil, 88
xor cl, 13
and rax, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], bx
cmovo si, si
add cl, 28 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], cx
and rdi, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdi]
cmp rbx, -3
or bx, 0b1000000000000000 # instrumentation
bsf si, bx
adc al, bl
test cl, 78
add edx, 89
and rdx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
bswap rcx
add sil, al
adc dil, cl
and rcx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rcx]
adc al, 43
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], bl
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rdx]
test rcx, 38
btc rbx, rdi
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
xchg rsi, rdx
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 97
cmovle rcx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
