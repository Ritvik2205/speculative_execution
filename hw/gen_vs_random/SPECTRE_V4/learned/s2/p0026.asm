.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdi], esi
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rsi
and rsi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rsi]
or eax, 1802312508
add cl, cl
dec rdi
add bl, -72
or bl, dl
cmovz edx, esi
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], esi
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 94
nop
and rsi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rsi], 43
and rsi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rsi]
add edi, 11
sbb cl, dl
not ecx
and bl, 44 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdx]
not si
lea cx, qword ptr [rbx + rsi + 43]
cmovo rcx, rcx
adc al, -58
bswap rbx
or rdi, rsi
cmovnl rax, rax
movzx ecx, sil
test ebx, 1263899340
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 78
cmovnp ecx, ebx
sbb bl, -94
xor al, 102
test ebx, 1263899340
imul rdi, rsi, 57
and rsi, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 5
and si, 68
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], bx
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], dl
cmovb rdx, rdi
mov rcx, 5862286138240743445
not cx
and bl, dl
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], cl
sbb eax, -984782068
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
