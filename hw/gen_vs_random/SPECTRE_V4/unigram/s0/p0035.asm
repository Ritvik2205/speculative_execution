.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
cmovnbe rsi, rdi
bts rdx, 67
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
bts edi, 167
add dl, dl
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], di
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], ax
test cl, -89
add rbx, rax
add rbx, rdx
cmovnb ebx, esi
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 20
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdx
sbb bl, al
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], 11
imul bl
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], 31
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], 84
and rsi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rsi]
add edi, eax
cmovs edx, ebx
sbb eax, -984782068
or bx, -111
cmovnp edi, esi
xchg esi, edi
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rsi]
or dil, sil
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rbx]
cmovb esi, ebx
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 49
and rax, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], ax
and rdi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdi]
bt edx, 91
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], dx
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 74
sbb cl, 20
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rcx
and rdx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
