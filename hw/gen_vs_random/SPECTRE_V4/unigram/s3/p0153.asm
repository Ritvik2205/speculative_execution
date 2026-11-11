.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 5
and rcx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], rbx
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], 49
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], 80
and rbx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rbx]
xchg di, bx
inc ecx
xor dl, -123
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], bx
adc rdi, rsi
and ax, -603
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
cmp rsi, rcx
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 6
cmovp rdi, rdi
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], bx
and rbx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rbx]
or rax, rcx
not esi
and rdi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdi]
add al, -64 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rbx]
add esi, edi
cmp al, sil
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
add ax, 6414
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
neg dl
adc al, cl
and rdi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
adc rax, 310915511
movzx esi, al
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], edi
and rax, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rax]
and dil, dl
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 3
cmovp rdi, rsi
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rcx]
and si, -70
xor dil, dil
bts di, 72
cmp dx, -1
cmovno eax, ebx
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
