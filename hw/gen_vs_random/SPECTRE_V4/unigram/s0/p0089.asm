.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rdi]
cmp eax, -92285311
add rcx, rsi
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
xor bl, 93
add bl, -115 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 66
sub sil, dil
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 90
and rsi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rsi]
bts ebx, 22
add dl, -94 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rax]
xchg ecx, esi
not sil
and al, dil
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 75
add al, 122 # instrumentation
cmovns ebx, eax
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rbx
cmovnbe rax, rbx
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 46
xor ax, 28088
and rsi, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 8
and dl, al
and rcx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rcx]
cmp al, 19
sbb sil, 108
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
add cl, 119 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rcx]
sbb al, bl
xchg edi, edx
sub sil, -36
cmovnle cx, bx
and rbx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 4
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 54
imul dx
bt edi, esi
mul cl
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rcx
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
