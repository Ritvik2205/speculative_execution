.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], bl
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], al
sub eax, -1804712207
btc esi, 63
and rcx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rcx]
or eax, 1001462340
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 80
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], cl
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], bx
btc eax, edx
mov dil, al
add al, -71 # instrumentation
cmovb rdi, rdx
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], 79
and rax, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rax]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rdx
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], si
add eax, ebx
and rsi, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rsi]
cmp dil, -29
xor rsi, rbx
cmp cx, 0
and rax, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rax]
xor bl, 27
and rsi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
and bx, ax
cmovs eax, edi
xor sil, 16
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, ecx
adc dil, cl
and rsi, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 37
and rdi, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rdi]
btc rax, 227
and rcx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rcx], 11
sub bl, dil
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
btc eax, 62
and ax, 25163
cmp sil, -100
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
movzx rsi, bx
and rsi, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
