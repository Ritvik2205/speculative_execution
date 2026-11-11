.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc esi
not bx
and rax, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rax]
imul rdx, rbx, 45
and dl, al
imul rsi
movzx rax, bl
test dx, 51
cmp rax, -120490246
and rsi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rsi]
not eax
adc cl, bl
bts rdi, rdi
and rsi, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rsi]
add edx, 26
imul bl
sbb di, -76
and rdi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rdi]
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
and rsi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 9
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 74
cmovo dx, si
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
mul ax
sub dl, bl
and rbx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
test di, 54
or di, dx
and bl, al
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rsi
sub cl, cl
movzx edx, dl
sub dl, bl
and rbx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rbx]
add dl, -94 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdx]
xor bl, 93
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 1
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], ax
test edi, -1249897727
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], 17
cmovnl si, ax
and eax, -24
and rdi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], bx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
