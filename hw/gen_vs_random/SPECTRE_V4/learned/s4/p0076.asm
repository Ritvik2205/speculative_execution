.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 75
test dl, 19
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
bts si, 30
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ecx
movzx ax, al
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 567129166
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
test bl, cl
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
xor di, ax
xor dl, bl
or ax, -15282
or al, 96
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
cmovns ax, ax
cmovs eax, ecx
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], ecx
bt edi, ebx
xchg eax, ebx
sub cl, 116
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 439393806
add sil, 110
sub dl, al
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 98
sbb edi, 63
xchg rcx, rax
mov dil, cl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], si
add al, -75 # instrumentation
adc al, 79
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 1
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rax]
neg rbx
xor ax, 25554
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], bl
and rsi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rsi]
sub dl, dl
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
