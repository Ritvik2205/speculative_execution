.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 32
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -71
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], si
xchg edx, edi
cmovnb ecx, esi
and cl, sil
movzx ax, al
and rdi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rdi]
adc ax, 6
or bx, -111
dec rbx
test dl, 19
and rax, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
sbb sil, dl
and rax, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
mov edi, -1544998000
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], cx
not ax
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rbx]
add dx, -90
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rbx]
or esi, 30
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
cmovo eax, ecx
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 82
cmovnbe ebx, eax
cmovnbe cx, dx
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btr dword ptr [r14 + rbx], edx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rsi]
add dl, -71 # instrumentation
adc dl, bl
and rcx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rcx]
add al, -117 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rbx]
add esi, ebx
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
sbb al, dl
xor al, 69
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
test dx, 77
bts ecx, ecx
and rsi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rsi]
and rax, 93
imul cl
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 2
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
