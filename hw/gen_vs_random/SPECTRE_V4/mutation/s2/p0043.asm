.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -59 # instrumentation
movsx edi, bl
cmovno esi, edi
sbb dl, cl
cmp dil, -29
test dil, -5
and rsi, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rsi]
cmovbe rsi, rax
mov cl, 1
and ebx, -4
adc rax, 2071185388
sub al, dl
cmovnz cx, di
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 76
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], -63
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rsi
add al, cl
cmovbe eax, esi
cmovnl rdx, rcx
and rcx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
add cl, 87 # instrumentation
cmovz edx, ecx
sub rbx, rcx
and rbx, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rbx]
sub dl, bl
test cx, 19367
cmovl rbx, rdi
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], -123
cmovs rdx, rsi
or ebx, -78
and rbx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], si
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], bx
add eax, -1628652110
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 0
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rdi
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
and dil, -23
test dl, al
or bl, -86
cmovz ecx, edx
sbb ax, 7207
cmovnp ax, si
and rdx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
mov bl, dl
cmp bl, al
adc sil, -2
and rdi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
