.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
cmovno edx, edi
add sil, 3
cmovz ebx, esi
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rax]
and bl, bl
and rdi, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], si
xor si, -73
and rdi, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 27
test si, 9
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rax
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rbx]
imul si, si
sbb esi, 82
adc cl, al
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rsi
cmovnp rcx, rsi
sbb dl, dil
xchg al, bl
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], -77
cmp ecx, 89
sub ecx, -107
cmovz cx, di
cmovnbe rdi, rsi
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
cmovz dx, bx
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], 120
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], dx
and rsi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rsi], rsi
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], cl
mov al, 125
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 51
bt di, 53
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
cmovp ax, ax
and rbx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rbx]
movsx edx, sil
mov dl, cl
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rdx]
sub eax, -1627558845
and rax, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
