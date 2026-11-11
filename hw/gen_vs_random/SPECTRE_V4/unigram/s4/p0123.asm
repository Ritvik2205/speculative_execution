.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test edi, -1249897727
cmovb rax, rsi
cmp dx, bx
sbb rbx, rdx
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], bx
and rdx, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rdx]
btc rsi, rdi
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
or dx, 0b1000000000000000 # instrumentation
bsf dx, dx
cmovnl si, cx
and dil, sil
and rdi, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rdi], 94
adc sil, dil
and rbx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rbx]
cmovs esi, eax
test dil, 76
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
btc ax, 41
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
sbb rsi, -115
adc al, 69
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 6
mov rdx, rdi
and rsi, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rax]
imul edi, ebx, 40
and cl, sil
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
xor dil, 95
add bl, -109 # instrumentation
sbb eax, -2052726562
cmp cl, cl
and rcx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rcx]
test edi, -1249897727
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
and rbx, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rbx]
cmp dl, 52
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
imul dl
and rdx, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rdx]
movzx ebx, dl
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], ax
not al
test dl, 19
cmovs esi, ebx
not si
cmp dl, 86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
