.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx edx, sil
and rcx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rcx]
imul edx
and rbx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rbx], 87
and rsi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], 27
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
cmovns si, bx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 49
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rbx
and rcx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rcx]
cmp al, bl
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], cx
sub dl, cl
xor dl, -66
and rsi, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rsi]
mov dil, 59
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], ebx
or dx, 32
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rdi
and bx, si
xor dx, dx
bts di, 72
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
and bl, -30
cmovb cx, bx
cmp di, -8
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdx], 10
adc di, -78
and rsi, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rsi]
mov al, dl
sbb cl, cl
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rdi
cmovnp cx, bx
cmovnbe ebx, eax
and rax, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], ebx
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 5
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], sil
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rbx]
add dl, 1 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rbx]
imul al
and rdi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdi]
not rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
