.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 7 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rsi]
cmp eax, -813838876
dec bl
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
adc ax, 25365
imul si, ax, -75
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rdx
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], -58
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ecx
cmp eax, 89
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
bts rdi, 144
add bl, -59
cmovnbe eax, esi
cmp esi, -84
test cx, 19367
cmovl rbx, rdi
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], -123
cmovs rdx, rsi
or ebx, -82
and rbx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], si
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], bx
add eax, 1255256879
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 0
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rdi
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
and dil, -120
test dl, al
or bl, 80
cmovz ecx, edx
sbb ax, 1843
cmovnp ax, si
and rdx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
mov bl, dl
cmp bl, al
adc sil, -112
and rdi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
