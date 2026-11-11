.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rdx]
add cl, -82 # instrumentation
sbb cx, bx
and rcx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rcx]
sbb ebx, 73
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], cl
dec rcx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], bl
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rdi
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
adc dil, bl
and rdx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], cx
cmp ax, 23131
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -52
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 91
and dx, 1
test dx, 85
adc dl, 17
adc bl, al
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 46
and rax, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rax]
xor cl, -85
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], 95
and rcx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], cl
add bl, al
btc bx, 3
and rcx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rcx], 85
xor bl, 93
and rax, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rax]
or eax, 1802312508
and bl, dil
neg rdi
movzx edi, di
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
adc al, sil
adc cl, al
xor rcx, 19
and rdx, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdx]
btr ax, dx
test eax, 1561062795
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
add sil, 56 # instrumentation
cmovle rax, rsi
and rdx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
