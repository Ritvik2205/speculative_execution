.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -115 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 2
cmovz edx, ecx
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 119
bts esi, 241
and rsi, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rsi]
dec rsi
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], 1
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
cmovp ax, bx
mul bl
add bl, 13 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rdi]
cmovz edx, edi
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], 92
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], cx
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -119
xor di, si
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 46
imul esi, ebx, 55
cmovp si, si
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
add esi, ebx
and rdi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdi]
cmovz rbx, rsi
and rsi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], edi
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdx]
imul si, cx, 51
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
add edx, 4
xor al, 59
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], -69
and rdi, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rax], edi
cmovs rdi, rcx
imul eax
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
xor dl, cl
bts esi, 241
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], bx
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], edx
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, edi
xor esi, eax
sbb sil, 108
mov cl, cl
and rsi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rsi]
cmovle rbx, rsi
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
