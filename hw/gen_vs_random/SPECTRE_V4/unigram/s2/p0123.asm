.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
and si, bx
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], al
sbb dil, 82
sbb dl, al
cmovp rcx, rax
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rcx
cmovnz si, bx
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], al
bswap rdx
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
imul rax, rax
movzx rsi, ax
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
and dil, -23
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 15
not bl
test dl, dl
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rcx
and rcx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rcx]
cmp eax, 2
and rax, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
cmp dl, cl
or rdx, 1
xor cl, 13
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rax
mov ebx, 51969593
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], 85
sub rax, 1914398062
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
btr bx, bx
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
inc rdx
btc rdi, 26
adc rax, rdi
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], dx
and dil, -120
and rdi, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
add bl, 54
add bl, 122 # instrumentation
cmovz si, bx
and rax, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rax]
add bl, 95 # instrumentation
mov bl, 18
and rdi, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rdi]
dec rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
