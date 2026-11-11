.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
add rdx, rcx
add cl, 119 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rax]
xor dil, 70
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
imul rdi
and rsi, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rsi]
sub bl, bl
not dx
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, edi
btc rdx, 42
or eax, 2007177863
add ebx, 3
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dil
and rdx, 46
xor al, dil
and rax, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rbx]
xor si, dx
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
imul cl
adc rsi, 28
xchg ecx, eax
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 89
cmovz eax, ebx
bt eax, esi
test rsi, 30
and rdi, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rcx]
cmovnz dx, di
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
mov dil, -118
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 86
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rcx], edi
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], bl
and ecx, 80
add al, 118
add edx, 80
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dl
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dl
movzx bx, al
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 64
and rbx, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rbx]
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle eax, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
