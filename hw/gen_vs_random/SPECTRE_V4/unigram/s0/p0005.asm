.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb bl, bl
and rcx, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rcx]
bts ebx, 22
cmovle rax, rcx
and rsi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rax
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rdi]
xor si, bx
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
test ecx, 11
bt edx, ecx
xor bl, bl
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rdi
add dl, 118 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
add cl, 84
or sil, bl
and rbx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rbx]
imul ebx, ecx, 37
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
test cl, dl
and dl, cl
xor dl, 46
and rdx, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rdx]
movzx dx, cl
and rcx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rcx]
xor bx, ax
sbb dil, 11
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 20
add bl, -18 # instrumentation
mov rbx, rdx
and rsi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], cl
cmovp di, bx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rax]
test bl, 0
cmovnp edi, edi
cmovnbe eax, edx
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb si, ax
bts edx, 79
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 41
add dl, 41
or rdx, rax
bts esi, esi
and rdx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
