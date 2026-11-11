.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 62
sbb edx, 98
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], di
cmovz esi, eax
btr rdx, rax
btc bx, 72
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rbx
sub ax, 24441
sub ebx, edx
cmovnl rbx, rax
and rbx, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], 60
and rsi, 0b1111111111111 # instrumentation
adc rdx, qword ptr [r14 + rsi]
and edx, 32
bts esi, 241
sbb di, ax
cmovnb eax, edx
cmovns rcx, rbx
and rbx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rbx]
cmovnp rsi, rbx
cmovnb eax, esi
sub ax, si
and rax, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rax]
sbb edx, 69
test eax, 1561062795
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], cx
and rcx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rcx]
mov al, 48
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rsi], di
and rdi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdi]
bt edx, 44
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], eax
and rsi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rsi]
xor dil, 97
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], 40
bt ebx, esi
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], bx
and rdx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rdx], bx
sbb cx, 25
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
and rcx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], bl
sub rax, -701741274
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], cl
cmovo bx, di
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
