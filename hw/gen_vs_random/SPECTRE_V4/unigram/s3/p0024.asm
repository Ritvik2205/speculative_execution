.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 73
test edx, 573099753
movzx edi, dil
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
xor al, al
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
sbb dil, cl
add cl, -117 # instrumentation
cmovs rax, rsi
and rdi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
btc bx, di
movsx rcx, dx
cmovl rax, rbx
and rbx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], cl
and rcx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], 56
inc edi
sbb dl, -99
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
or al, al
sbb sil, dil
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], rcx
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], si
cmp al, 70
dec rbx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 69
neg al
and rcx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rcx]
cmp cl, sil
cmovnp edx, esi
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], di
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 67
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rax
adc sil, 22
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], si
movzx edx, dil
and rdi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], edx
sub al, 98
bts rcx, 52
and rdi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], edx
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rcx]
and sil, cl
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
