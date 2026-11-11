.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 7 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rsi]
cmp eax, 2
dec bl
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
adc ax, -22258
imul si, ax, -75
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rdx
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], -58
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ecx
cmp eax, 2
sub sil, -35
and rcx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rcx]
btr rdx, rsi
mul dx
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], dl
cmovnbe edi, esi
and rcx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rcx]
add al, -17 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], ax
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rsi
bts rdi, 49
add bl, -38
cmovnbe eax, esi
cmp esi, 123
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], bl
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 25
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
mov ecx, ebx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 118
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
or al, -50
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 0
xor al, dl
and rax, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 4
cmovb rax, rsi
and rdx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rbx], -72
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
imul dil
adc rax, 1873854064
and rcx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rcx], -32
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
sbb ax, 7207
and ax, 62
xchg rbx, rdx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 1 # instrumentation
and dx, word ptr [r14 + rax] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
