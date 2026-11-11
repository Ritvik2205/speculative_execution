.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 46
movzx rbx, ax
cmovz rcx, rdx
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rax
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
test cl, bl
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
add cl, -21 # instrumentation
adc rax, 2
cmovo edx, edi
and rcx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 32
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rdi]
sbb ebx, 86
cmp al, al
not di
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
cmovb edx, eax
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rdx], eax
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
add al, 123 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], 47
and rax, 0b1111111111111 # instrumentation
cmp bx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 125
cmovs rsi, rax
and rsi, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rsi]
and bl, -63
sbb dx, bx
and rcx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rcx]
add cl, -82 # instrumentation
sbb si, dx
test al, al
and rbx, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rbx]
neg sil
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rbx
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], 25
cmovnb esi, edx
cmovle eax, esi
sub cl, -74
btc rdi, 167
sub bl, bl
add al, al
and rsi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
